---
nodeTypeId: node_xQmEzWQFHdHy2swhrugrF
tags:
  - "#matthew_effect"
cssclasses: dg-evd
centrality:
nodeInstanceId: 019df250-5c4c-7d84-9c21-fc7671ed3ff3
source: "@azoulayMatthewEffectFable2014"
supports: "[[QUE - Is citation count a hopelessly confounded metric for evaluating researcher impact?]]"
---
The post-HHMI-appointment citation premium on pre-existing articles is essentially absent for articles published 3–10 years before appointment and concentrated among articles published in the year immediately preceding appointment; the effect is small overall and limited to this short temporal window.

## Description

> "We do find evidence of a post-appointment citation boost, but the effect is small and limited to a short window of time." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=2|p. 2]])

> "the effect of HHMI appointment on subsequent citations is strongest for articles that were published during the year preceding appointment." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=26|p. 26]])

Figures 3A–3C in the paper show this clearly: for articles published 3–10 years before appointment (Figure 3A), the confidence intervals straddle zero throughout the post-appointment period. For articles published 2 years before (3B) there is a modest lift. For articles published 1 year before (3C), there is a visible and significant boost that decays over roughly 5 years.

Two interpretations of the temporal pattern are offered:
1. Status effects are genuinely dynamic — the prize triggers reassessment of recent work but not older work whose quality is already established by the market.
2. The temporal pattern is another manifestation of the uncertainty mechanism: recently published articles have less accumulated citation evidence and so readers rely more heavily on author status as a quality cue.

## Methods Context

### What?
Interaction of treatment effect with article vintage (years before appointment). Figure 4 plots interaction coefficients for each vintage from 1 to 10 years before appointment.

### How?
Fixed effects specifications interacting HHMI treatment with article vintage indicator variables. Separate matched samples for different vintage strata (Figure 3 panels).

### Who?
HHMI-ECPW matched sample; pre-appointment articles only.

## Other Notes
- The small and temporally limited nature of the effect is a key "fable" finding — it substantially qualifies the Matthew effect narrative while not fully refuting it.
- The brevity of the effect (~5 years for t0-1 articles) has practical implications: even if status inflates citations, the inflation is temporary, meaning long-run citation accumulation may be less distorted.


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
