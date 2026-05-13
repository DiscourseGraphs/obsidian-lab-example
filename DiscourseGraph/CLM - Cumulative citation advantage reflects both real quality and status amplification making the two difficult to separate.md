---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
tags:
  - "#matthew_effect"
cssclasses: dg-clm
confidence:
nodeInstanceId: 019df250-5c20-7d07-8390-c80fc669eb2c
---
## Grounding
> "In Merton's classic account, not only does status itself influence perceptions of quality, but high status scientists are more likely to attract tangible resources, such as research funding and outstanding graduate students, which can then be parlayed into scientific outputs of higher quality." (Azoulay et al. 2014, p. 3)

> "although eminent scientists may be more likely to make significant contributions, they are obviously not alone in making them." (Merton 1968, p. 7)

The deep identification problem for citations as an impact metric: high-status scientists accumulate more citations through two routes — (1) their status causes others to attend to and cite their work more (perception effect, even for fixed quality), and (2) their status gives them resources that allow them to produce genuinely higher-quality work (real quality effect). These two pathways produce citation accumulation that looks the same from the outside but has very different implications for whether citations measure impact or merely amplify advantage.

**Supporting evidence:**
- [[EVD - HHMI citation boost falls substantially with article-level quality controls - @azoulayMatthewEffectFable2014]] — isolates perception pathway
- [[EVD - Superstar extinction effect scales with citation count not NIH funding - @azoulaySuperstarcExtinction2008]] — real quality pathway
- [[EVD - Paper assessment reversed when eminent authorship revealed (Rayleigh anecdote) - @mertonMatthewEffectScience1968]] — perception mechanism in action

**Key caveats:**
- Azoulay 2014 deliberately restricts analysis to pre-appointment articles to *exclude* the resource pathway. Their finding of a small status effect applies only to the perception mechanism.
- The resource pathway (training environment, equipment, students, collaborators) may produce much larger citation advantages than the perception pathway — and this remains unmeasured across both papers.
- > "we do not address the principle avenue through which the accumulative advantage process may unfold (the preferential access to resources enjoyed by producers who benefit from a status..." (Azoulay et al. 2014, p. 30)

## Other Notes
This is arguably the central synthesis claim for the research question. "Hopelessly confounded" implies the two pathways cannot be separated. Azoulay 2014 shows the perception pathway is small; but both papers leave open that the resource pathway (status → resources → real quality) may be large. If so, accumulated citations partly *are* measuring real impact — just impact that was itself enabled by prior status rather than prior intrinsic merit. Whether that counts as "confounded" depends on what we think impact measurement is *for*.

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
