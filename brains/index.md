---
layout: default
title: What is a practice brain?
description: A plain explanation of the local-first practice brains — what they are, what you type, what they cost, why there are two privacy modes, and how to install one. Eight jurisdictions.
---

<h1>What is a practice brain?</h1>

<p class="lede">Plain answer, before any of the detail: <strong>it is a second brain for your
practice that lives in your own computer.</strong> You talk to it in ordinary sentences. It
remembers your matters between sessions. It costs nothing, forever. And you decide whether it
is allowed to talk to the internet at all.</p>

<p>If you have never installed a piece of software from a website before, that is fine. This
page assumes you have not. There is a step-by-step install section further down, and a separate
guide for Windows and for Mac in every repository.</p>

<h2>The problem it exists for</h2>

<p>A large firm gives its partners an apparatus. Juniors who check the citations. A clerk who
knows the limitation date. Someone who remembers what happened in the matter eight months ago.
A compliance function that reads the brochure before it goes out.</p>

<p>A solo practitioner has none of that, and does the same work. The gap is not talent. It is
apparatus.</p>

<p>The numbers behind this, for India, are not anecdote. A 2023 Vidhi Centre for Legal Policy
survey across eight High Courts &mdash; Delhi, Bombay, Allahabad, Gujarat, Calcutta, Kerala,
Madras and Patna &mdash; found that <strong>79% of Indian lawyers with under two years of
practice earn less than ₹10,000 a month</strong>. A Bar Council of India survey the same year
found that among advocates in their first five years, roughly <strong>45% report chronic
stress, 38% severe anxiety, 28% signs of depression, and 36% have seriously considered leaving
the profession</strong>.</p>

<p>Software does not fix that. But a solo practitioner should not also be priced out of the
apparatus. So the apparatus is free, and it always will be.</p>

<h2>What you actually do with it</h2>

<p>It runs in the terminal &mdash; the plain text window that is already on your computer. You
do not need to learn commands. There are four, and one of them does everything.</p>

<table>
  <thead><tr><th>You type</th><th>What happens</th></tr></thead>
  <tbody>
    <tr><td><code>reception</code></td><td>Turns it on. It greets you, checks each specialist is
      working, and loads what it remembers from last time.</td></tr>
    <tr><td><code>chat</code></td><td>An ordinary conversation. You ask in normal sentences; it
      works out internally which specialist should answer. Nothing to memorise. This is the one
      most people use.</td></tr>
    <tr><td><code>ask "…"</code></td><td>A single question, answered, done. For when you want
      one thing and not a session.</td></tr>
    <tr><td><code>recap</code></td><td>What you were doing in earlier sessions. Its memory
      survives closing the laptop.</td></tr>
  </tbody>
</table>

<h2>The seven specialists inside it</h2>

<p>Behind that one conversation sit seven functions. You never call them by name &mdash; the
brain routes your question to the right one. They are listed here so you know what is actually
in the box.</p>

<ul class="posture">
  <li><strong>The Receptionist.</strong> Listens, works out what you need, calls the right
  specialist. This is why you never memorise commands.</li>
  <li><strong>The Matter Manager.</strong> Holds every live case &mdash; parties, prayers,
  hearing dates, orders, what state the draft is in. You walk into court and the context comes
  back immediately.</li>
  <li><strong>The Citation Clerk.</strong> Parses and checks citation formats so you are not
  eyeballing whether a reference is well-formed at midnight.</li>
  <li><strong>The Court Registrar.</strong> Knows the courts and forums in your jurisdiction
  &mdash; which one, what procedure, what subject matter.</li>
  <li><strong>The Drafting Assistant.</strong> Connects to the separate open-source drafting
  plugins. This one is the least mature of the seven; treat it as a connection, not a
  finished drafting engine.</li>
  <li><strong>The Compliance Officer.</strong> Reads your website copy, brochures and posts for
  professional-conduct risk <em>before</em> you publish &mdash; advertising rules, confidentiality,
  data-protection gaps, and in some jurisdictions client-money and AML flags.</li>
  <li><strong>The Deadline Tracker.</strong> Limitation periods, hearing dates, filing deadlines.
  Also still maturing &mdash; check it, do not lean on it.</li>
</ul>

<p>And it learns. Each session it records what it worked on, so the next session does not start
from nothing.</p>

<h2 id="tiers">Why there are two privacy modes, and not one</h2>

<p class="lede">This is the part most legal-AI products will not explain to you, so here it is
in full.</p>

<p>A practice brain does two different kinds of work. <strong>Remembering</strong> your matters
is ordinary bookkeeping &mdash; it happens on your own machine, always, in both modes, and
nothing about it ever touches a network. <strong>Reasoning</strong> about a question needs a
language model, and a language model is a large piece of software that has to run somewhere.</p>

<p>There are exactly two places it can run, and they are not equivalent:</p>

<ul class="posture">
  <li><strong>On your own laptop.</strong> You install a free program called Ollama and
  download an open model &mdash; Qwen3 is the default. From then on nothing leaves your
  machine, at all, ever. You can unplug the internet and it still works. It is slower than a
  cloud model and not as sharp, and on an older laptop it may be too slow to be pleasant. It
  costs nothing.</li>
  <li><strong>On a cloud provider.</strong> Faster, and materially more capable. But the text
  of your question travels to that company's servers. For anyone else that is a preference. For
  a lawyer it is a regulated act with a professional-conduct dimension.</li>
</ul>

<p><strong>That is the entire reason the two modes exist.</strong> Not as a free tier and a paid
tier &mdash; both are free, and there is nothing to buy. The modes exist because
<strong>your professional rules treat those two situations differently</strong>, and software
sold to lawyers should not blur that.</p>

<h3>What the local mode is really for</h3>

<p>Privileged material. Client-confidential instructions. Special-category or sensitive personal
data. Anything where the honest answer to <em>&ldquo;where did this text go?&rdquo;</em> has to
be <em>&ldquo;nowhere&rdquo;</em>. In local mode that answer is true by construction, not by
promise, because there is no transmission to reason about.</p>

<h3>What the cloud mode does about it</h3>

<p>If you choose cloud mode, everything on its way out passes through the
<a href="https://github.com/Wolfgangrush/pseudonymisation-gateway">Pseudonymisation Gateway</a>
first &mdash; open source, no runtime dependencies, in memory only, never writes personal data
to disk. It strips and substitutes identifiers before the prompt leaves your machine, using the
identifier set for your jurisdiction. Anything it cannot fully resolve is surfaced to you and
recorded in an audit log rather than quietly sent, so the final call stays yours.</p>

<p><strong>Then the honest part.</strong> Pseudonymisation is a technical safeguard. It is not a
legal discharge. It reduces what is exposed; it does not perform your transfer assessment, obtain
your client's informed consent, or satisfy your regulator on your behalf. Those remain yours.
The table below sets out, jurisdiction by jurisdiction, exactly what is still owed.</p>

<h2 id="jurisdictions">The eight jurisdictions, and what each one owes</h2>

<p>Each brain is written against its own bar's conduct rules and its own data-protection
statute. This is not one product with the place-name changed.</p>

<div class="juris-stack">
{% for j in site.data.jurisdictions %}
  <section class="juris">
    <div class="juris-head">
      <h3>{{ j.name }}</h3>
      <span class="price">{{ j.price }}</span>
    </div>
    <p class="juris-who">{{ j.who }}</p>
    <dl class="juris-body">
      <dt>Running the model locally</dt>
      <dd>{{ j.local_covers }}</dd>
      <dt>If you choose cloud mode, you still owe</dt>
      <dd>{{ j.cloud_owes }}</dd>
    </dl>
    {% if j.note != "" %}<p class="juris-note"><strong>Hard exception.</strong> {{ j.note }}</p>{% endif %}
    <p class="juris-links">
      <a class="btn btn-ghost" href="{{ j.repo }}">Get the {{ j.name }} brain</a>
      <span class="muted small">Regulators: {{ j.regulator }}</span>
    </p>
  </section>
{% endfor %}
</div>

<h2 id="install">Installing it</h2>

<p>Budget about thirty minutes the first time, most of which is downloading. You do this once.</p>

<h3>Step 1 &mdash; check you can run it</h3>

<p>Any Windows, Mac or Linux computer from roughly the last eight years. You need
<strong>Python</strong>, which is free; the Windows and Mac guides in each repository walk
through installing it with screenshots and no jargon. On Linux the Mac instructions apply
unchanged.</p>

<h3>Step 2 &mdash; install the brain for your jurisdiction</h3>

<p>One line in the terminal. This is the India one; swap the jurisdiction name for yours:</p>

<pre class="code-block"><code>pip install git+https://github.com/Wolfgangrush/ai-brain-india.git</code></pre>

<h3>Step 3 &mdash; decide your privacy mode</h3>

<p>If you will put client material into it &mdash; and you should assume you will &mdash;
install the local model as well. Two steps, both free:</p>

<ol>
  <li>Download Ollama from <a href="https://ollama.com/download">ollama.com/download</a> and
  install it like any other application.</li>
  <li>In the terminal, run: <code>ollama pull qwen3:14b</code></li>
</ol>

<p>That downloads the model to your machine once. After that it runs offline permanently. If
you skip this step, the brain will look for a cloud model instead &mdash; which is a legitimate
choice, but make it deliberately, having read the section above.</p>

<h3>Step 4 &mdash; start it</h3>

<pre class="code-block"><code>reception</code></pre>

<p>That is the whole installation. Every repository also carries a
<code>GETTING_STARTED.md</code>, a <code>WINDOWS_INSTALL.md</code> or <code>MAC_INSTALL.md</code>
with the common failure points, and a <code>DISCLAIMER.md</code> worth reading before you put
real matters into it.</p>

<h3>If English is not the language you work in</h3>

<p>The India brain ships its getting-started guide in <strong>eleven languages</strong> &mdash;
English, हिन्दी, मराठी, বাংলা, தமிழ், తెలుగు, ગુજરાતી, ಕನ್ನಡ, മലയാളം, ਪੰਜਾਬੀ and ଓଡ଼ିଆ. Eight of
those were AI-assisted translations and would genuinely benefit from a native speaker's
corrections; the repository has a <code>TRANSLATION_HELP_WANTED.md</code> for exactly that.
Other jurisdictions ship fewer languages.</p>

<h2>What it is not, stated plainly</h2>

<ul class="posture">
  <li><strong>It is not finished.</strong> These are early releases. The Drafting Assistant and
  the Deadline Tracker in particular are partial. Read each repository's own status notes
  rather than assuming parity across the seven specialists.</li>
  <li><strong>It does not give legal advice</strong> and it does not replace your judgment. AI
  makes mistakes, including confident ones. Every citation, statutory reference, procedural step,
  limitation calculation and ground of relief must be verified by you before you file it, advise
  on it, or rely on it. The UK brain documents the case law on what happens when practitioners
  skip that step, and it is not comfortable reading.</li>
  <li><strong>It is for qualified practitioners</strong> and staff supervised by them. It is not
  a self-help legal tool for the public.</li>
  <li><strong>It does not solicit work for you.</strong> The Compliance Officer exists partly to
  stop you breaching advertising rules, not to help you get around them.</li>
  <li><strong>It is not a service.</strong> There is no account, no subscription, no dashboard,
  and no company standing behind it with a support desk. It is published source code under the
  MIT licence. If I stopped maintaining it tomorrow, your copy would keep working, because it is
  on your machine and not on my server.</li>
</ul>

<h2>Why you can check any of this</h2>

<p>Every claim on this page is a claim about code that is published. The licence is MIT. You can
read it, have someone you trust read it, or search it for the word that would prove me wrong. A
privacy claim that cannot be inspected is a marketing claim; that is precisely why the source is
public.</p>

<p><a class="btn btn-primary" href="#jurisdictions">Choose your jurisdiction</a>
<a class="btn btn-ghost" href="{{ '/privacy/' | relative_url }}">Read the privacy policy</a></p>
