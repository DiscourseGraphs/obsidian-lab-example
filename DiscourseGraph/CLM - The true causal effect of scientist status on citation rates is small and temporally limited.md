---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
tags:
  - "#matthew_effect"
cssclasses: dg-clm
confidence:
nodeInstanceId: 019df250-5c20-7d07-8390-c80fc669eb2c
---
## Grounding
> "We do find evidence of a post-appointment citation boost, but the effect is small and limited to a short window of time." (Azoulay et al. 2014, p. 2)

This is a qualified *exoneration* of citation counts relative to the strong Matthew effect narrative. Azoulay et al. set up the paper as testing whether the Matthew effect is real ("effect") or narrative ("fable") and land on: real, but modest. Once quality is properly controlled at the article level, the status-driven citation premium is present but not large, and dissipates after a few years even for the articles most affected (those published in the year before appointment).

**Supporting evidence:**
- [[EVD - HHMI citation boost limited to articles published one year before appointment - @azoulayMatthewEffectFable2014]] — temporal boundedness
- [[EVD - HHMI citation boost falls substantially with article-level quality controls - @azoulayMatthewEffectFable2014]] — magnitude after controls

**Key caveats:**
- "Small" is relative to the large effects seen in naive analyses. Whether the effect is small enough to be ignored in practice depends on the use case (promotion decisions vs. broad policy analysis).
- The HHMI prize is a particularly well-targeted, quality-screened recognition. Status shocks from lower-signal sources (e.g., job at a prestigious institution, prominent co-authorship) might produce larger effects.
- The finding covers pre-award articles only. The effect on post-award publications — which can benefit from both status and resources — is a different question.
- > "we do not address the principle avenue through which the accumulative advantage process may unfold (the preferential access to resources enjoyed by producers who benefit from a status..." (Azoulay et al. 2014, p. 30) — the resource pathway is explicitly out of scope.

## Other Notes
This claim stands in tension with the Merton narrative. Merton describes the Matthew effect as a powerful, self-reinforcing, cumulative process. Azoulay's clean empirical test finds that the perception mechanism — status directly inflating citations for fixed-quality work — is real but modest. The cumulative advantage process described by Merton may be mostly *real* quality differences (high-status scientists actually do better work partly because of their status, via resource access), not just perceived quality inflating recognition.

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
