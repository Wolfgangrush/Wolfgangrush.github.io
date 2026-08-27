---
layout: default
title: Tools
description: Single-purpose tools for practitioners — the pratipaksha opposing-counsel simulator, pramaan electronic-evidence integrity, nyaya-check cheque-dishonour cause-of-action checker, asthir precedent-instability radar, the NAKASHA board reader, samanvaya privacy conformance, offline multi-script OCR, the pseudonymisation gateway, the DPDP Act as runnable code, the Supreme Court AI regulations mapping, a citation manager, a news digest bot, the CHOF human-oversight toolkit, and repofacts.
---

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">00</span>How to read this page</p>
  <div>
    <h2>Fourteen tools. Each one does exactly one job.</h2>
    <p class="lede">These are separate from the
    <a class="link" href="{{ '/brains/' | relative_url }}">practice brains</a>, which are a different
    thing entirely. Every tool here is free, the source is published, and it runs on your own
    machine.</p>
    <p>Each is described the same way: <strong>what it actually is</strong>, then <strong>the problem
    it exists for</strong>, then what it does about it, then the honest limits. If a description here
    does not make sense to a working practitioner, that is a defect in the description, and I would
    rather hear about it than have it politely ignored.</p>

<ul class="jump">
  <li><a href="#nakasha">NAKASHA</a></li>
  <li><a href="#samanvaya">samanvaya</a></li>
  <li><a href="#multi-script-ocr">Multi-script OCR</a></li>
  <li><a href="#pseudonymisation-gateway">Pseudonymisation gateway</a></li>
  <li><a href="#dpdp-law-to-code">DPDP as code</a></li>
  <li><a href="#sc-ai-regulations">SC AI regulations</a></li>
  <li><a href="#citation-parser">Citation manager</a></li>
  <li><a href="#news-bot">News digest</a></li>
  <li><a href="#chof">CHOF</a></li>
  <li><a href="#repofacts">repofacts</a></li>
  <li><a href="#pratipaksha">pratipaksha</a></li>
  <li><a href="#pramaan">pramaan</a></li>
  <li><a href="#nyaya-check">nyaya-check</a></li>
  <li><a href="#asthir">asthir</a></li>
</ul>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">01</span>Tomorrow's board</p>
  <div>
    <div class="tool" id="nakasha">
      <div class="tool-head"><h2>NAKASHA</h2><span class="badge badge-live">macOS app · free</span></div>

      <p class="what-is"><strong>What it is.</strong> A small Mac application that reads tomorrow's
      court board and pulls out the matters that are yours.</p>

      <p class="tool-problem"><strong>The problem.</strong> The daily board is published in the
      evening. It runs to 87 pages and 700 or more matters. Finding your own name in it means
      scrolling a PDF on a phone, late, tired, hoping you do not skip a line — and a missed matter is
      not a small mistake.</p>

      <p><strong>What it does.</strong> Type your surname. It gives you your list. Click any row and
      it shows you that entry against the printed page, so you confirm it with your own eyes rather
      than trusting the software. Export the ones you keep. It reads both a bar association's daily
      board and a High Court daily causelist, and when you open both for the same date it uses one to
      fill the gaps in the other.</p>

      <p>The matching is deliberately loose, because boards are printed with words broken mid-line and
      fields cut off at fixed widths. A tool like this is allowed to show you an extra row you do not
      need. It is not allowed to hide one you do.</p>

      <p class="tool-meta"><strong>What you need:</strong> a Mac running macOS 13 or later. Universal
      binary, no third-party dependencies, and <strong>no network entitlement at all</strong> — it
      cannot reach the internet even if it tried, and the operating system refuses on its behalf.</p>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/nakasha/releases/latest">Download for macOS</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/nakasha">Read the source</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">02</span>Privacy conformance</p>
  <div>
    <div class="tool" id="samanvaya">
      <div class="tool-head"><h2>samanvaya <span class="muted" style="font-weight:400">· समन्वय</span></h2><span class="badge badge-live">macOS app · free</span></div>

      <p class="what-is"><strong>What it is.</strong> An adviser writes down one declaration
      describing an organisation. samanvaya reads it and returns a local report saying which
      obligations under four named privacy regimes appear satisfied, which are unaddressed, and which
      cannot be resolved on the facts as declared.</p>

      <p class="tool-problem"><strong>The problem.</strong> Four separate compliance reports are four
      separate compliance reports. The sentence an adviser actually needs is the one that falls out of
      comparing them — where the regimes agree, where they diverge, and where the declaration is
      simply silent.</p>

      <p><strong>What it does.</strong> It reconciles, and it refuses to rank. It never touches the
      organisation's systems, networks or data; it reads what a human wrote down. It makes no network
      calls at all.</p>

      <p><strong>The honest limits, from its own README.</strong> Of the four regimes, <strong>one is
      sourced and three are draft</strong> — the repository badges say so on its front page rather
      than burying it. It reports; it does not advise. 790 tests, 90.8% coverage.</p>

      <p class="tool-meta"><strong>Availability:</strong> the source is public and the Mac build
      exists, but <strong>no release has been published yet</strong> — the signed build is waiting on
      Apple notarisation. Until that clears, this is source you can read and run, not a download.</p>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/samanvaya/releases/latest">Download for macOS</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/samanvaya">Read the source</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">03</span>Scanned paper</p>
  <div>
    <div class="tool" id="multi-script-ocr">
      <div class="tool-head"><h2>Multi-Script PDF OCR</h2><span class="badge badge-live">macOS app · free</span></div>

      <p class="what-is"><strong>What it is.</strong> A Mac app with three buttons — Open, OCR, Save —
      that reads text out of scanned PDFs in <strong>12 or more Indian scripts and 17 other
      languages</strong> and saves a <strong>searchable copy</strong>: the recognised text is
      written back into the PDF as an invisible layer, so the file looks identical to the scan but
      the text can be searched and copied out of it.</p>

      <p class="tool-problem"><strong>The problem.</strong> A certified copy arrives as a scan. It has
      no text layer, so you cannot search it, quote from it, or paste a paragraph into your own document. The
      cloud OCR services that handle Devanagari want you to upload the document — which is the one
      thing you cannot do with a client's papers. And the file is 40&nbsp;MB, which the registry's
      upload form will not take.</p>

      <p><strong>What it does.</strong> English and sixteen other non-Indic languages go through
      Apple's on-device Vision framework. Every major Indian language goes through a Tesseract binary
      bundled <em>inside</em> the app with its language data — nothing is downloaded at runtime. The
      text appears in a side panel, selectable and copyable per page or in bulk. There are two ways
      to save. <em>Save with OCR</em> writes the recognised text back into the PDF as an invisible
      layer: the page looks identical to the scan but <code>pdftotext</code>, Spotlight and a PDF
      reader's find function can all reach the text. <em>Save Reduced</em> is the separate
      size-shrinking pass and does not add a text layer — pages that already have a real text layer
      are passed through untouched so they stay searchable and small, and only image pages are
      rasterised. If the source is already optimised, the app refuses to write an inflated "reduced"
      copy and tells you so instead of silently making the file bigger.</p>

      <p class="tool-meta"><strong>The honest limit on the searchable copy.</strong> Any
      text-extraction tool recovers the embedded text exactly, but Apple's PDFKit — which Preview
      uses — can reorder combining marks when extracting Devanagari, so a find-in-page search inside
      Preview may not match Devanagari text reliably even though the text is correctly stored in
      the file.</p>

      <p class="tool-meta"><strong>Fully offline.</strong> Zero network calls, no network entitlement,
      no API key, no account, no telemetry, no version-check ping. It runs indefinitely with the
      Wi-Fi switched off.</p>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/multi-script-pdf-ocr/releases/latest">Download for macOS</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/multi-script-pdf-ocr">Read the source</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">04</span>Before it leaves</p>
  <div>
    <div class="tool" id="pseudonymisation-gateway">
      <div class="tool-head"><h2>Pseudonymisation Gateway</h2><span class="badge badge-live">Library · free</span></div>

      <p class="what-is"><strong>What it is.</strong> A filter that sits between you and any cloud AI
      and takes your client's identity out of your words before they leave your computer — then puts
      it back into the answer when it returns.</p>

      <p class="tool-problem"><strong>The problem.</strong> The moment you ask any cloud assistant to
      <em>save this reply against the matter and put the next date in my calendar</em>, the
      client's name, the other side's name and the case number have already left your machine —
      because they were in the sentence you typed. You never decided to send them.</p>

      <p><strong>What it does.</strong> Before anything is transmitted it replaces every identifying
      value with a neutral placeholder, sends only that version, and restores the real values in the
      reply you read:</p>

<pre class="code-block"><code>You type      →  File this under the Mehta matter, PAN ABCDE1234F.
What is sent  →  File this under the [PERSON_1] matter, PAN [PAN_1].
What you see  →  File this under the Mehta matter, PAN ABCDE1234F.</code></pre>

      <p>The substitution is consistent within a session — the same person is
      <code>[PERSON_1]</code> every time they appear — so the model can still follow who did what to
      whom. It simply never learns who they are. The map between real and placeholder lives in memory
      for that session only and is never written to disk.</p>

      <p><strong>What it covers.</strong> The identifiers general-purpose tools miss, because most
      were built for American and European data: Aadhaar, PAN, GSTIN and IFSC for India; National
      Insurance, NHS and UTR numbers for the UK; NRIC for Singapore; Emirates ID and trade licence
      numbers for the UAE; TFN and ABN for Australia; SSN and ITIN for the US. Emails, names with
      honorifics, dates and case numbers work everywhere. Microsoft's Presidio is good software and
      does not cover the Asian and Gulf identifiers — that gap is why this exists.</p>

      <p><strong>The honest limits.</strong> Anything it cannot fully resolve is <em>shown to you and
      recorded</em> rather than quietly transmitted, so you make the call rather than discovering it
      later. And it remains a <strong>technical safeguard, not a legal discharge</strong>.</p>

      <p class="tool-meta"><strong>Who this is for.</strong> If you use a practice brain, you do not
      install this — it is already inside, and because every outbound call funnels through one
      function it runs on <em>every</em> request rather than being a mode you could forget. If you
      build legal software yourself, it is a library you put in front of your own outbound calls.</p>

<pre class="code-block"><code>pip install git+https://github.com/Wolfgangrush/pseudonymisation-gateway</code></pre>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/pseudonymisation-gateway#readme">Installation guide</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/pseudonymisation-gateway">Read the source</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">05</span>Statute as code</p>
  <div>
    <div class="tool" id="dpdp-law-to-code">
      <div class="tool-head"><h2>The DPDP Act 2023, as runnable code</h2><span class="badge badge-live">Reference implementation · free</span></div>

      <p class="what-is"><strong>What it is.</strong> India's data-protection statute written out as
      working software instead of prose, so that a compliance question can be <em>run</em> rather than
      only argued.</p>

      <p class="tool-problem"><strong>The problem.</strong> Two advisers read section 8 and reach two
      answers. Neither is being careless; the text admits both. When the disagreement is about what
      the section <em>does</em> rather than what it means, code settles it faster than
      correspondence.</p>

      <p><strong>What it does.</strong> Sections 5 to 16 as Python you can call, with 407 tests
      standing behind the behaviour. Published as one citizen's reference implementation in response
      to MeitY's Law-to-Code consultations.</p>

      <p class="tool-meta"><strong>The honest limit.</strong> It is a reading of the Act, not the Act.
      Where the statute is genuinely ambiguous the code takes a position, and the tests show you which
      position it took.</p>

<pre class="code-block"><code>pip install git+https://github.com/Wolfgangrush/dpdp-law-to-code
dpdp-check</code></pre>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/dpdp-law-to-code#readme">Installation guide</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/dpdp-law-to-code">Read the source</a>
      </p>
    </div>

    <div class="tool" id="sc-ai-regulations">
      <div class="tool-head"><h2>Supreme Court Draft AI Regulations 2026 — clause map</h2><span class="badge">Analysis · free</span></div>

      <p class="what-is"><strong>What it is.</strong> A clause-by-clause mapping of the Supreme Court
      of India's draft <em>Regulations for the Use of AI in Courts, 2026</em> against open-source legal
      tooling, with a stakeholder comment template.</p>

      <p class="tool-problem"><strong>The problem.</strong> A draft regulation lands, the consultation
      window is short, and every practitioner reads it alone. What is missing is a map that says which
      clause reaches which kind of tool.</p>

      <p class="tool-meta"><strong>Status.</strong> The regulations remain <strong>draft and
      unnotified</strong>; the consultation closed on 20 June 2026. This is a reading of a draft, and
      it says so.</p>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/sc-ai-regulations-2026-mapping/blob/main/clause-mapping.md">Read the clause map</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/sc-ai-regulations-2026-mapping">Read the mapping</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">06</span>Keeping track</p>
  <div>
    <div class="tool" id="citation-parser">
      <div class="tool-head"><h2>Legal Citation Manager</h2><span class="badge badge-live">Local system · free</span></div>

      <p class="what-is"><strong>What it is.</strong> A local system that receives judgment PDFs,
      pulls the citation metadata out of them, stores it in a database on your own machine, and lets
      you search, edit and export the library.</p>

      <p class="tool-problem"><strong>The problem.</strong> You read a judgment in court, you use it,
      and four months later you remember the proposition but not the citation. There is no record,
      because the reading happened on a phone between two boards.</p>

      <p><strong>What it does.</strong> Send the PDF to your own bot from court. It extracts the
      metadata, files it in local SQLite, and gives you a dashboard to search and edit. Export the
      whole library when you need it elsewhere.</p>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/Citation-Parser/blob/main/SETUP_GUIDE.md">Set-up guide</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/Citation-Parser">Read the source</a>
      </p>
    </div>

    <div class="tool" id="news-bot">
      <div class="tool-head"><h2>News digest bot</h2><span class="badge">Server-side · free</span></div>

      <p class="what-is"><strong>What it is.</strong> A bot that collects the day's reported
      judgments, statutory notifications and legal news from several sources, drops the duplicates,
      attaches the judgment or order link where it can find one, and sends you a short digest
      written for a practitioner rather than a general reader.</p>

      <p class="tool-meta"><strong>Stated plainly:</strong> unlike everything else on this page, this
      one <strong>is not local and is not offline</strong>. It fetches from the open web and uses a
      language model to summarise. It handles published news, not your files — but it is the one tool
      here that does not run on your own machine, and it should not be described as if it did.</p>

      <p class="small muted">Built with the help of Sidinsights — credited in the repository, and
      credited here.</p>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/telegram_news_bot#readme">Run your own</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/telegram_news_bot">Read the source</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">07</span>From the dissertation</p>
  <div>
    <div class="tool" id="chof">
      <div class="tool-head"><h2>CHOF — quantifying human oversight</h2><span class="badge">Research · free</span></div>

      <p class="what-is"><strong>What it is.</strong> The working implementation of a formula I
      proposed in my LL.M. dissertation at Queen's University Belfast.</p>

      <p>The dissertation asked how much human oversight an autonomous system must retain before the
      law is satisfied, and proposed a way of measuring it rather than asserting it. Writing it
      surfaced two problems with my own answer. The first was that a formula on paper cannot be
      applied consistently by two different assessors. The second was that a figure calculated once,
      before deployment, says nothing about the moment the system is actually running.</p>

      <p><strong>These two repositories are the fix.</strong> <code>chof-calc</code> is the formula as
      software — the same inputs give the same number, and the working is shown. <code>chof-kernel</code>
      is the second answer: an embedded governor that applies the measure in real time rather than
      once on paper, following the pattern of a tactical safety governor, and writing a
      cryptographically signed audit trail so the record of what it did cannot be quietly revised
      afterwards.</p>

      <p class="tool-meta"><strong>Source:</strong> Mahajan (2024), <em>What Balance Between Human
      Oversight and Machine Autonomy Is Necessary To Uphold Ethical Standards in Warfare, and How Can
      This Balance Be Legally Codified and Enforced</em>, LL.M. dissertation, Queen's University
      Belfast School of Law. Published so the argument can be checked against a working
      implementation rather than taken on the strength of the prose.</p>

<pre class="code-block"><code>pip install git+https://github.com/Wolfgangrush/chof-calc
chof-calc</code></pre>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/chof-calc#readme">Installation guide</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/chof-calc">chof-calc — the formula</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/chof-kernel">chof-kernel — the governor</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">08</span>Before you install it</p>
  <div>

    <div class="tool" id="repofacts">
      <div class="tool-head"><h2>repofacts</h2><span class="badge">Command line · free</span></div>

      <p class="what-is"><strong>What it is.</strong> A command-line tool that checks any GitHub
      repository before you install it — whether a model recommended it, a colleague sent you the
      link, or you found it yourself in a search.</p>

      <p class="tool-problem"><strong>The problem.</strong> A confident list of libraries arrives —
      from a model, a forum thread, or your own afternoon of searching. One of them does not exist.
      One has no licence file at all, so there is no grant of rights whatever its README implies.
      One has been dead for two years. On the page, all three look exactly like the ones that are
      fine, and none of them announces which it is.</p>

      <p><strong>What it does.</strong> Give it the list — a chat log, a markdown file, your notes. It
      pulls out every repository reference, asks GitHub about each one, and prints a verdict per repo:
      <strong>STOP</strong>, <strong>CAUTION</strong> or <strong>OK</strong>, with the reason in
      plain words. A repository with no licence file is a STOP rather than a warning, because there
      is nothing to rely on. It can also compare what the model <em>claimed</em> — the star count, the
      licence — against what GitHub actually reports, and a deeper pass adds security, quality and
      install-simulation checks.</p>

      <p>A check that could not run says so. It never reports an unchecked thing as a pass — which
      matters more here than usual, since the tool exists to catch exactly that habit in something
      else.</p>

      <p class="tool-meta"><strong>Stated plainly:</strong> GitHub only — no GitLab, no Bitbucket. It
      never clones, installs, executes or writes anything, and there is no telemetry. It has
      <strong>zero third-party dependencies</strong>, which for a tool whose subject is dependency
      risk is the whole point rather than a detail. Python 3.11 or later. Not on PyPI yet, so install
      it from the source.</p>

<pre class="code-block"><code>pip install git+https://github.com/Wolfgangrush/repofacts
repofacts</code></pre>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/repofacts#readme">Installation guide</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/repofacts">Read the source</a>
      </p>
    </div>
  </div>
</div>
</section>

<section class="section reveal">
<div class="mg">
  <p class="note"><span class="n">09</span>Before you file it</p>
  <div>

    <div class="tool" id="pratipaksha">
      <div class="tool-head"><h2>pratipaksha <span class="muted" style="font-weight:400">· प्रतिपक्ष</span></h2><span class="badge">AI agent · free</span></div>

      <p class="what-is"><strong>What it is.</strong> The opposing counsel you have not met yet. Point it at
      your own draft and it attacks it — then tells you how to survive the attack.</p>

      <p class="tool-problem"><strong>The problem.</strong> You find out what was wrong with your petition when
      the other side says it in open court, or when the Bench asks the question you had not thought about. By
      then the cheapest moment to fix it — before filing — is gone. Reading your own draft as an opponent is
      genuinely hard, because you already believe it.</p>

      <p><strong>What it does.</strong> It classifies the document, runs a <strong>threshold pass</strong> first
      — the objections that end a matter at the door regardless of merits, like pre-institution mediation,
      court fee on the relief actually claimed, res judicata, limitation, non-joinder — and then runs the
      attack battery for that document type. There are fourteen: civil and writ pleadings, defensive pleadings,
      contracts, notices, opinions, criminal pleadings, arbitration, appellate work, execution, consumer,
      direct tax, rent control, family, and company and insolvency. For each finding it switches register
      twice: once as the opponent putting the attack to the Bench, coldly and without softening, and once back
      on your side with the defensive fix. Findings are ranked FATAL through LOW, and it writes a timestamped
      report without touching your file.</p>

      <p class="tool-meta"><strong>The part that matters most:</strong> it will not give you a case citation
      unless it looked the case up during that run and confirmed the case says what it is being cited for —
      with the source listed. Anything it merely believes is marked <code>[VERIFY]</code> and never asserted.
      An opposing-counsel simulator that invents authority is worse than useless, because it arms you against
      ghosts while leaving the real exposure untouched.</p>

<pre class="code-block"><code>git clone https://github.com/Wolfgangrush/pratipaksha
cp -r pratipaksha/agents/pratipaksha ~/.claude/agents/</code></pre>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/pratipaksha#readme">Installation guide</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/pratipaksha">Read the source</a>
      </p>
    </div>

    <div class="tool" id="pramaan">
      <div class="tool-head"><h2>pramaan <span class="muted" style="font-weight:400">· प्रमाण</span></h2><span class="badge">Command line · free</span></div>

      <p class="what-is"><strong>What it is.</strong> It makes a screenshot, a CCTV clip, a WhatsApp export or a
      downloaded statement <em>provable</em> — and produces the certificate an Indian court requires before it
      will look at any of them.</p>

      <p class="tool-problem"><strong>The problem, in plain words.</strong> You cannot simply hand a printout of
      a WhatsApp chat to a court in India. Electronic material is admitted only with a certificate — under
      section 63 of the Bharatiya Sakshya Adhiniyam, which replaced the old section 65B of the Evidence Act —
      signed by someone responsible for the device or system, stating how the record was produced and that the
      device was working normally. Get that certificate wrong, get it signed by the wrong person, or forget it,
      and the evidence simply does not come in. Cases are lost on this and never on the merits. And separately:
      once a file leaves the phone and travels through email, WhatsApp and three laptops before it reaches the
      Registry, the other side will ask how you know it was not altered on the way — and usually you cannot
      answer.</p>

      <p><strong>What it does.</strong> Three things, in order. It <strong>fingerprints the file the moment you
      take custody of it</strong>, so any later change is detectable and you can prove the copy filed is the copy
      captured. It keeps a <strong>chain of custody</strong> — who held it, when, what was done to it — as a
      record you can put before a court. And it <strong>generates the section 63 certificate</strong> with the
      particulars the section actually asks for, rather than a template someone copied from another matter.</p>

      <p class="tool-meta"><strong>Deterministic.</strong> No language model sits anywhere in the decision path.
      The same file gives the same fingerprint every time, on any machine, which is the entire point — a
      fingerprint a court can reproduce is evidence, and one it cannot is an assertion. Nothing is uploaded.
      <strong>Verify the certificate's wording against the current notified Schedule before you file it</strong>
      — the tool builds the structure, you own what is signed.</p>

<pre class="code-block"><code>pip install git+https://github.com/Wolfgangrush/pramaan
pramaan</code></pre>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/pramaan#readme">Installation guide</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/pramaan">Read the source</a>
      </p>
    </div>

    <div class="tool" id="nyaya-check">
      <div class="tool-head"><h2>nyaya-check <span class="muted" style="font-weight:400">· न्याय</span></h2><span class="badge">Command line · free</span></div>

      <p class="what-is"><strong>What it is.</strong> A cause-of-action checker for cheque dishonour. It answers
      one question before you draft anything: <em>is this complaint still alive, or is it already dead on the
      calendar?</em></p>

      <p class="tool-problem"><strong>The problem.</strong> A section 138 complaint is a sequence of deadlines,
      and missing any one of them by a single day ends it — whatever the merits, whatever the amount. The cheque
      must be presented within validity. The demand notice must go within thirty days of the bank's memo. The
      drawer gets fifteen days to pay. Only then does the cause of action arise, and the complaint must follow
      within a month of that. Practitioners do this arithmetic by hand, under time pressure, from a file where
      the dates are scattered across four documents — and a mistake is not recoverable.</p>

      <p><strong>What it does.</strong> You give it the dates. It runs each statutory ingredient in order, tells
      you which are satisfied and which are not, computes every window with the actual calendar, and shows its
      reasoning at each step rather than returning a verdict you have to trust. Behind it sits a kernel of civil
      and criminal procedure and evidence provisions, so the answer is grounded in the sections rather than in
      a rule of thumb.</p>

      <p class="tool-meta"><strong>Deterministic, and it shows its working.</strong> The same facts give the same
      answer every time, with the ingredient-by-ingredient trace visible. No language model is in the decision
      path. It is decision-support for a qualified practitioner, not advice, and not a substitute for reading
      the section.</p>

<pre class="code-block"><code>pip install git+https://github.com/Wolfgangrush/nyaya-check
nyaya-check</code></pre>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/nyaya-check#readme">Installation guide</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/nyaya-check">Read the source</a>
      </p>
    </div>

    <div class="tool" id="asthir">
      <div class="tool-head"><h2>asthir <span class="muted" style="font-weight:400">· अस्थिर</span></h2><span class="badge">Command line · free</span></div>

      <p class="what-is"><strong>What it is.</strong> A radar for law that is <em>wobbling</em>. Not "this case
      was overruled" — a citator tells you that. This tells you "this proposition is unsettled, and here is
      whether the unsettled line is the one that binds <em>your</em> bench."</p>

      <p class="tool-problem"><strong>The problem.</strong> A citator answers a question about a <em>case</em>:
      is it good law. The question you actually have is about a <em>proposition</em>: if I argue this, will it
      hold. Those are different, and nothing tells you the second one. A point can be settled in one High Court,
      openly doubted in another, and sitting under a pending reference in a third — and the judgment you are
      reading will not mention any of that. You find out when the other side hands up the contrary line.</p>

      <p><strong>What it does.</strong> It reads judgments across India's High Courts, tracks where the same
      proposition is being decided both ways, and flags the fault line — including which way your own bench has
      gone, which is the part that decides whether the instability is your problem or your opportunity.</p>

      <p class="tool-meta"><strong>Early build.</strong> It surfaces where to look, not a conclusion to rely on.
      Read the judgments it points at before you build an argument on them.</p>

<pre class="code-block"><code>pip install git+https://github.com/Wolfgangrush/asthir
asthir</code></pre>

      <p class="juris-links">
        <a class="btn btn-primary" href="https://github.com/Wolfgangrush/asthir#readme">Installation guide</a>
        <a class="btn btn-ghost" href="https://github.com/Wolfgangrush/asthir">Read the source</a>
      </p>
    </div>

  </div>
</div>
</section>
