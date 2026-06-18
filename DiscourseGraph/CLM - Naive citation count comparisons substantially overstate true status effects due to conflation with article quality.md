---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
tags:
  - "#matthew_effect"
cssclasses: dg-clm
confidence:
nodeInstanceId: 019df250-5c20-7d07-8390-c80fc669eb2c
---
## Grounding
> "results can be quite misleading when, as is typical in the literature, the effect of status is measured at the producer level without adjustments for product-level quality." (Azoulay et al. 2014, p. 5)

> "much of the existing empirical literature on status may overestimate its true effect." (Azoulay et al. 2014, p. 30)

This claim is directly demonstrated by Azoulay 2014's research design: the same status shock (HHMI appointment) appears to have a much larger citation effect when quality is controlled at the scientist level vs. the article level. The implication for bibliometrics: any citation-based comparison that uses aggregate scientist-level counts (total citations, h-index) without controlling for article quality will conflate status with intellectual contribution.

**Supporting evidence:**
- [[EVD - HHMI citation boost falls substantially with article-level quality controls - @azoulayMatthewEffectFable2014]] — core demonstration
- [[EVD - Paper assessment reversed when eminent authorship revealed (Rayleigh anecdote) - @mertonMatthewEffectScience1968]] — upstream mechanism
- [[EVD - Equally productive scientists at lesser universities gain recognition less often - @mertonMatthewEffectScience1968]] — institutional confound

**Key caveats:**
- Azoulay 2014 is set in biomedical sciences only — field norms around citation may differ.
- The overstatement is not infinite: once article quality is properly controlled, a *genuine* (if small) status effect remains.
- "Much of" is the qualifier — not all; Simcoe & Waguespack (2011) is cited as a parallel result in a different domain (IETF standards), suggesting the finding is not biomedical-specific.

## Other Notes
This claim is upstream of the research question: if the goal is to use citations to rank individual scientists, and if the standard approach is to compare total citations or h-indices (scientist-level aggregates), then these comparisons are doing exactly what Azoulay et al. demonstrate is misleading.

> [!log] Log

### YYYY-MM-DD

```datacorejsx
return function NodeSetup() {
  const current = dc.useCurrentFile();
  const aliases = current.value("aliases");
  if (aliases && aliases.length > 0) return null;

  const handleClick = async () => {
    const full = current.$name;
    const MAX = 60;
    const slug = full.replace(/[?:*"<>|\\]/g, '').slice(0, MAX).trimEnd();
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
