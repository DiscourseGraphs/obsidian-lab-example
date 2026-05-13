---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
tags:
  - "#matthew_effect"
cssclasses: dg-clm
confidence:
nodeInstanceId: 019df250-5c20-7d07-8390-c80fc669eb2c
---
## Grounding
> "for all three measures of product-level uncertainty, we find that the effect of the producer-level status shock is larger for products that are of less determinate quality." (Azoulay et al. 2014, p. 26)

The three uncertainty proxies are: (1) low journal impact factor, (2) novel MeSH keywords, (3) high recombinant scope (out-of-field citations). In all three cases, the HHMI citation premium is larger. Crucially, the premium is statistically zero for articles building on intellectually proximate antecedents (the "easy to evaluate" case) and concentrated entirely on novel articles (the "hard to evaluate" case).

**Supporting evidence:**
- [[EVD - HHMI citation boost concentrated on novel and cross-disciplinary articles - @azoulayMatthewEffectFable2014]] — all three uncertainty moderators
- [[EVD - HHMI citation premium twice as large for low-JIF journals - @azoulayMatthewEffectFable2014]] — journal prestige as quality signal

**Key caveats:**
- "Largest" is relative — even for the most uncertain articles, the raw citation premium is modest in absolute terms.
- The uncertainty mechanism is theoretically predicted (status theory) but the causal interpretation requires the matching design to have successfully controlled for actual quality differences.

## Other Notes
This claim is particularly important for the research question because it suggests a systematic pattern: citation counts are *most* distorted for work at the research frontier. If novel and interdisciplinary science is exactly what funders and evaluators want to identify and reward, citation counts will systematically undervalue it when the researcher lacks prior status — and overvalue it when the researcher is already eminent.

Connects to: [[CLM - The true causal effect of scientist status on citation rates is small and temporally limited]]

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
