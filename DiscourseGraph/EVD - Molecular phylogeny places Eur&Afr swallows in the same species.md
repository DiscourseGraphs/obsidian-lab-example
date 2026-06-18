---
nodeTypeId: node_xQmEzWQFHdHy2swhrugrF
tags:
  - avian_biomechanics
cssclasses: dg-evd
centrality:
source:
aliases:
  - EVD - Molecular phylogeny places European and African barn swallow populations as intermixed-sister subspecies, with additional African endemic lineages elsewhere in the family.
nodeInstanceId: 019dde98-5839-7354-a5eb-e5e090752e0b
---

# Evidence Summary

![[swallow-phylo.jpg|350]]
 
 [[@dorPhylogenyGenusHirundo2010]]
[[@schieldPhylogenyHistoricalBiogeography2024]]
# Grounding Context

Well-resolved phylogeny of the swallow family using genome-wide UCE data.


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
