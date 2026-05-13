---
nodeTypeId: node_xQmEzWQFHdHy2swhrugrF
tags:
  - "#matthew_effect"
cssclasses: dg-evd
centrality:
source: "@azoulaySuperstarcExtinction2008"
nodeInstanceId: 019df250-5c4c-7d84-9c21-fc7671ed3ff3
---

## Grounding
> "we still find that appointment to HHMI causes an increase in citations to articles written before the award was granted. In a strict test of the Mertonian hypothesis that prestigious scientists garner greater recognition for outputs of a given level of quality, we find modest support for a main effect of a change in status." (Azoulay et al. 2014, p. 30)

Once quality is controlled at the *article* level (same journal, same authorship configuration, matched citation trajectory), the residual status premium is small: about 3 extra citations per year for the most affected articles (those published in the year before appointment), decaying over roughly five years. This stands in contrast to naive producer-level comparisons, which inflate the apparent status effect by conflating it with quality differences within a scientist's portfolio. The claim directly opposes the "hopelessly confounded" reading of citation counts.

**Supporting evidence:**
- [[EVD - HHMI citation boost falls substantially with article-level quality controls - @azoulayMatthewEffectFable2014]] — adding same-journal matching erases more than one-third of the naive status effect
- [[EVD - HHMI citation boost limited to articles published one year before appointment - @azoulayMatthewEffectFable2014]] — temporal boundedness further limits the scope of the confound
- [[EVD - Selection-panel citation behavior ruled out as driver of HHMI citation boost - @azoulayMatthewEffectFable2014]] — rules out selection-committee insider dynamics as an alternative explanation

**Key caveats:**
- "Modest" is relative to the naive estimate; a 72nd→81st percentile shift over 10 years is still consequential for individual careers
- HHMI is an exceptionally well-targeted, quality-screened status signal; lower-signal status shocks (prominent institutional affiliation, famous co-author) might produce larger residual effects
- The analysis covers pre-award articles only; the status effect on post-award work — which benefits from both recognition and enlarged resources — is a distinct and potentially larger question

## Other Notes
This claim provides the strongest single-source answer to the QUE from within the corpus: confounded, yes; hopelessly so, no. It complements [[CLM - The existing literature on status effects in science overestimates the Matthew Effect due to inadequate quality controls]] by showing not just that prior estimates were biased but what the corrected estimate looks like. `[~T]`

## Provenance

> [!abstract]- Source tracing
> Source quotes (blockquotes) are drawn from the notes files. Specific numbers in the interpretive paragraph (3 extra citations/year, 72nd→81st percentile) are from the notes files. The framing of "what the corrected estimate looks like," all caveat bullets, and Other Notes are analytical synthesis from `citation-confound-analysis.md` and training-data knowledge — not directly from the notes files. Text marked `[~T]` was reconstructed from training knowledge; verify against the original paper before citing.



```datacorejsx
return function NodeSetup() {
  const current = dc.useCurrentFile();
  const aliases = current.value("aliases");
  if (aliases && aliases.length > 0) return null;

  const handleClick = async () => {
    const full = current.$name;
    const MAX = 60;
    const slug = full.replace(/[/?:*"<>|\\]/g, '').slice(0, MAX).trimEnd();
    const file = app.vault.getAbstractFileByPath(current.$path);
    if (!file) return;

    await app.fileManager.processFrontMatter(file, fm => {
      fm.aliases = [full];
    });

    if (slug !== full) {
      const newPath = `${file.parent.path}/${slug}.md`;
      await app.fileManager.renameFile(file, newPath);
    }
  };

  return <button onClick={handleClick}>Save full title as alias</button>;
}
```
