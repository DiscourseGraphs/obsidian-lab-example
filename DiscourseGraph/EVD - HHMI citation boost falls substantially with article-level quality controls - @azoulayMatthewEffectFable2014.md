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
When citation rates to pre-appointment articles are analyzed controlling only for scientist-level quality, a relatively large HHMI citation premium is observed; this premium falls significantly when article-level quality controls are added, indicating that naive citation comparisons confound status with quality.

## Description

> "When we analyze citation rates to articles while controlling only for scientist-level quality, we observe a relatively large effect of the status shock. This effect falls significantly when we isolate the result to be net of scientist- and article-level controls for quality." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=5|p. 5]])

> "results can be quite misleading when, as is typical in the literature, the effect of status is measured at the producer level without adjustments for product-level quality." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=5|p. 5]])

The key finding: the same status shock (HHMI appointment) appears to have a much larger effect on citations when quality is held constant at the scientist level versus the article level. This is direct evidence that citation comparisons at the scientist level are substantially confounded by article quality differences within any given scientist's portfolio.

> "many settings, datasets that disaggregate producers into component product offerings may be necessary to estimate a reliable status effect." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=5|p. 5]])

## Methods Context

### What?
> "we estimate the effect of a scientist becoming a Howard Hughes Medical Investigator (HHMI) on citations to articles the scientist published before the prize was awarded." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=2|p. 2]])

### How?
Matched sample design pairing HHMI articles to near-identical articles by early-career prize winners (ECPWs) who did not receive the award. Matching on publication year, journal, number of authors, authorship position, and pre-appointment citation trajectory. Difference-in-differences framework comparing pre/post-appointment citation rates.

### Who?
Howard Hughes Medical Institute (HHMI) investigators in the biomedical sciences, compared to early-career prize winners matched on scientific track record.

## Other Notes
- > "the standard approach to estimating the effect of status on performance is likely to overstate its true, causal influence. This likely occurs for two reasons. First, controls for quality often are inadequate, particularly if quality is held constant at the producer level but performance is measured at the product level." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=30|p. 30]])
- This is a methodological EVD as much as a substantive one: it demonstrates that the standard analyst move (controlling for scientist-level proxies like total citation count) is insufficient to isolate status from quality.


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
