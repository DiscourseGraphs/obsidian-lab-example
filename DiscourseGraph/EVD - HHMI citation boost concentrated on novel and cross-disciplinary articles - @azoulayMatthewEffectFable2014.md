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
The HHMI post-appointment citation premium is concentrated on novel articles (those using recently coined MeSH keywords) and articles with high recombinant scope (those citing out-of-field antecedents); the premium is statistically indistinguishable from zero for non-novel and intellectually proximate articles.

## Description

**On novelty:**
> "the absence of a statistically significant main effect of HHMI appointment indicates that the citation benefit of the award is concentrated on relatively novel articles." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=25|p. 25]])

**On recombinant scope:**
> "the HHMI treatment effect for articles that build on intellectually proximate antecedents does not statistically differ from zero." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=26|p. 26]])

> "for all three measures of product-level uncertainty, we find that the effect of the producer-level status shock is larger for products that are of less determinate quality." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=26|p. 26]])

The three measures of uncertainty were: (1) low Journal Impact Factor, (2) high MeSH keyword novelty, (3) high recombinant scope (proportion of out-of-field citations). All three modulate the status effect in the same direction.

## Methods Context

### What?
Novelty measured by average "vintage" of MeSH keywords tagging each article (recently coined keywords → novel article). Recombinant scope measured as proportion of an article's citations going to scientifically unrelated papers (using PubMed "related articles" algorithm).

### How?
Median splits of novelty and recombinant scope measures; interaction terms with treatment indicator. Table 2, Columns 3 and 4.

### Who?
Same HHMI-ECPW matched sample of biomedical scientists and pre-appointment articles.

## Other Notes
- This is arguably the most policy-relevant finding in the paper: status-based citation inflation is *largest* for the kinds of novel, boundary-crossing science that standard bibliometric assessments struggle to evaluate fairly — and that may be the most important for long-run scientific progress.
- Implies citation counts are least reliable as quality signals for the work where unbiased quality assessment matters most.


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
