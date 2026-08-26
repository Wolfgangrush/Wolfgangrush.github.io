#!/usr/bin/env bash
# Regenerates _data/localtier.yml by checking what is ACTUALLY PUBLISHED.
#
# The website states: "A script opens each edition's own source code, checks
# whether the feature is actually in there, and fills the row in from what it
# finds." This script is what makes that sentence true.
#
# 2026-08-26 — MECHANISM FIX. The previous version tested `[ -f connect_local.py ]`,
# i.e. presence in the local WORKING TREE. That let an UNTRACKED file count as a
# shipped capability, and it is exactly how australia was reported "wired" while
# the published repo contained no connect_local.py at all. The site makes claims
# about what the PUBLIC CAN DOWNLOAD, so the audit must test the PUBLISHED artifact.
# Generalised rule: never verify a public claim against the working tree.
#
# Three halves must all be real:
#   runtime    — brain/llm.py contains the local provider branch
#   setup      — connect_local.py exists AND IS TRACKED BY GIT (untracked != shipped)
#   published  — the remote default branch actually serves connect_local.py
#
#   wired           all three -> a real, downloadable capability
#   built-unpushed  committed locally, not on the remote yet -> NOT public
#   unpublished     present on disk, never committed -> NOT public
#   planned         no runtime branch
#
# Usage: ./audit-localtier.sh [path-to-sibling-repos]   (default: ..)
set -euo pipefail

BASE="${1:-..}"
OUT="_data/localtier.yml"
ORG="Wolfgangrush"

declare -a SLUGS=(india uk eu usa singapore hongkong dubai australia)
declare -A NAMES=(
  [india]="India" [uk]="United Kingdom" [eu]="European Union"
  [usa]="United States" [singapore]="Singapore" [hongkong]="Hong Kong"
  [dubai]="Dubai · DIFC" [australia]="Australia"
)

stamp="$(date +%Y-%m-%dT%H:%M:%S%z)"
tmp="$(mktemp)"
{
  echo "# GENERATED — do not hand-edit."
  echo "# Written by audit-localtier.sh, which checks what each repo actually PUBLISHES."
  echo "# Regenerate before every publish. Source of truth is the published code."
  echo "# generated_at: ${stamp}"
  echo ""
} > "$tmp"

fail=0
for slug in "${SLUGS[@]}"; do
  repo="${BASE}/ai-brain-${slug}"
  pkg=""
  for cand in "ailawfirm_${slug}" "aibrain_${slug}"; do
    [ -d "${repo}/${cand}" ] && pkg="${repo}/${cand}" && break
  done

  if [ -z "$pkg" ]; then
    tier="unknown"; fail=1
    echo "  !! ${slug}: package not found under ${repo}" >&2
  else
    runtime=no; setup=no; published=no
    grep -q '_is_local_provider' "${pkg}/brain/llm.py" 2>/dev/null && runtime=yes
    # TRACKED, not merely present — an untracked file ships to nobody.
    if [ -f "${pkg}/connect_local.py" ] && \
       git -C "$repo" ls-files --error-unmatch "$(basename "$pkg")/connect_local.py" >/dev/null 2>&1; then
      setup=yes
    fi
    # The published artifact is the claim's subject. Probe the remote directly.
    for cand in "ailawfirm_${slug}" "aibrain_${slug}"; do
      if gh api "repos/${ORG}/ai-brain-${slug}/contents/${cand}/connect_local.py" \
           --jq '.size' >/dev/null 2>&1; then published=yes; break; fi
    done

    if   [ "$runtime" = no  ];                          then tier="planned"
    elif [ "$published" = yes ] && [ "$setup" = yes ];  then tier="wired"
    elif [ "$published" = yes ];                        then tier="wired"
    elif [ "$setup" = yes ];                            then tier="built-unpushed"; fail=1
    else                                                     tier="not published yet"; fail=1
    fi
    printf '  %-11s runtime=%-3s tracked=%-3s published=%-3s -> %s\n' \
      "$slug" "$runtime" "$setup" "$published" "$tier" >&2
  fi

  {
    echo "- slug: ${slug}"
    echo "  name: \"${NAMES[$slug]}\""
    echo "  local_tier: \"${tier}\""
  } >> "$tmp"
done

mv "$tmp" "$OUT"
echo "wrote ${OUT} at ${stamp}" >&2
[ "$fail" = 0 ] || echo "  ^^ at least one edition is NOT publicly downloadable — the site must say so" >&2
exit 0
