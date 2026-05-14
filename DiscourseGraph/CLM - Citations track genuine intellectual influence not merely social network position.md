---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
tags:
  - "#matthew_effect"
cssclasses: dg-clm
confidence:
nodeInstanceId: 019df250-5c20-7d07-8390-c80fc669eb2c
---
## Grounding
> "Together, these results suggest that it is the quality of ideas emanating from the stars, rather than simply the availability of the research funding they control, that goes missing after their deaths." (Azoulay et al. 2008, p. 26)

> "spillovers are circumscribed in ideas space, but not in physical or social space." (Azoulay et al. 2008, p. 2)

The Superstar Extinction paper provides an oblique but powerful argument for citations as a partial validity signal: the spillover effects from highly-cited scientists onto their collaborators are (a) real and large, (b) scale with citation count not funding, and (c) operate through intellectual proximity not physical/social proximity. This means the scientists who accumulate the most citations are generating knowledge that genuinely propagates to others' work — not merely gatekeeping resources or conferring social legitimacy.

**Supporting evidence:**
- [[EVD - Superstar extinction effect scales with citation count not NIH funding - @azoulaySuperstarcExtinction2008]] — dissociation between citation and funding predictors
- [[EVD - Superstar death causes 5-10pct decline in quality-adjusted publication output of collaborators - @azoulaySuperstarcExtinction2008 1]] — real intellectual spillovers [[@azoulaynber]]

**Key caveats:**
- The sample is the scientific *elite* by definition (top 5% of life scientists by multiple criteria). The finding that citations track spillovers among superstars does not guarantee the same holds at lower status levels.
- "Quality-adjusted" publications are themselves weighted by JIF and citation percentiles — so citations are being used to validate citations, which is somewhat circular. The key is that the *mortality shock* is exogenous, breaking the status-causes-citations feedback.
- The intellectual proximity finding (coauthors proximate in ideas space suffer more) does not tell us whether the star's high citations were deserved — only that they generated real knowledge that others drew upon.

## Other Notes
This claim is the primary counterweight to the "hopelessly confounded" characterization. Citations may be biased upward for high-status scientists, but they also track something real: the density of ideas that others build on. A citation metric that was purely a social status signal would not predict intellectual spillovers mediated by ideas-space proximity.

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
