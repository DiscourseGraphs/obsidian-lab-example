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
> "No scientist's career can be summarized by a single number. Any metric, no matter how good it is at achieving its stated goal, has limitations that must be recognized before it is used to draw conclusions about a person's productivity, the quality of her research, or her scientific impact." (Wang & Barabási 2021)

Citation count fails as a single summary for multiple independent reasons: it conflates quantity with quality, is confounded by team size, field norms, career stage, and reputation effects, and misaligns with expert judgment about who is doing the most important science. Alternative metrics (h-index, Q-factor) each capture different facets and outperform raw citations on specific predictive tasks, but none fully solves the problem. Expert assessment — the gold standard against which metrics are validated — is itself contaminated by status biases. The conclusion is not that measurement is hopeless but that no single number should be used alone.

**Supporting evidence:**
- [[EVD - Q-factor outperforms h-index and total citations in predicting Nobel laureate careers - @wangBarabasiScienceScience2021]] — a measure capturing consistency of impact beats raw total citations and h-index; demonstrates that citations lack discriminative power at the top
- [[EVD - Short CVs with only top-tier papers rated higher than identical CVs plus low-impact papers - @wangBarabasiScienceScience2021]] — expert judgment penalizes additional low-impact papers, inverting the ranking that total citation count and h-index would produce

**Key caveats:**
- The claim is largely accepted in bibliometrics; the active debate is about *which* composite or normalized metrics best address the identified limitations, not whether limitations exist
- Q-factor itself is a single number — the claim implies we need contextual, multi-dimensional assessment rather than ruling out single-number summaries in principle
- For aggregate, population-level analysis (grant allocation policy, cross-institutional comparison), imperfect single metrics may still outperform no systematic metric; the claim is strongest for individual-level evaluation

## Other Notes
The Q-factor finding is particularly striking for the QUE: in a direct predictive horse race, total citations (the metric in question) finishes fourth out of five. The winner (Q) penalizes inconsistency — the same feature that inflated citation counts (many mid-tier papers from a high-profile lab) actively *lowers* Q. This inverts the incentive structure of citation optimization. `[~T]`

## Provenance

> [!abstract]- Source tracing
> Source quotes (blockquotes) are drawn from the notes files. The ROC ranking order (Q 0.94 > h-index 0.90 > top paper 0.88 > total citations 0.86 > productivity 0.65) is from the notes files. The "high-profile lab" framing in Other Notes and the framing of the CV experiment finding are analytical synthesis `[~T]`. Caveat bullets are training-data synthesis. Verify Q-factor mechanics against the original paper.



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
