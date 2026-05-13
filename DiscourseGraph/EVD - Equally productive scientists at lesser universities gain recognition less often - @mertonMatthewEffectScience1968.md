---
nodeTypeId: node_xQmEzWQFHdHy2swhrugrF
tags:
  - "#matthew_effect"
cssclasses: dg-evd
centrality:
nodeInstanceId: 019df250-5c4c-7d84-9c21-fc7671ed3ff3
source: "@mertonMatthewEffectScience1968"
supports: "[[QUE - Is citation count a hopelessly confounded metric for evaluating researcher impact?]]"
---
Highly productive scientists at major universities gained recognition more often than equally productive scientists at lesser universities, holding publication quantity constant.

## Description

> "Crane used the quantity of publication (apart from quality) as a measure of scientific productivity and found that highly productive scientists at a major university gained recognition more often than equally productive scientists at a lesser university." ([[Merton - Matthew Effect on Science.pdf#page=1|p. 1]])

This finding (Crane, cited by Merton) shows that institutional affiliation independently predicts recognition at a fixed level of output — a direct confound for citation-based impact metrics. Two scientists publishing at the same rate accumulate different recognition based solely on where they work.

## Methods Context

### What?
Publication quantity as measure of scientific productivity; recognition (acknowledgment by peers) as outcome.

### How?
Crane's case study (cited by Merton; source: Crane, D., original study). Cross-institutional comparison holding productivity constant.

### Who?
Scientists at major vs. lesser universities.

## Other Notes
- This is a third-party finding cited within Merton — not Merton's own data. Treat as lower-confidence EVD; primary source is Crane's original study.
- Points to institutional prestige as an additional confound layered on top of individual status effects — geographically and institutionally stratified citation accumulation.



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
