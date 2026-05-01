---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
tags:
cssclasses: dg-clm
confidence:
aliases:
  - CLM - "European" and "African" swallows are not a single species-level distinction; the barn swallow is a single species with multiple subspecies, while several endemic African genera &species exist in Hirundinidae.
nodeInstanceId: 019dde98-14dc-73c5-95f9-cc15930f3058
---
# Summary
**Evidence statement:**

[[EVD - Molecular phylogeny places Eur&Afr swallows in the same species]]
# Source of Claim

[@dorPhylogenyGenusHirundo2010]

# Notes

![[eur-swall.png|300]]
![[afr-swallow.jpg|300]]

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
