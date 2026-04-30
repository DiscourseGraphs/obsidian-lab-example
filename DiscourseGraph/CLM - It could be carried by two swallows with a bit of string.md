---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
tags:
cssclasses: dg-clm
confidence: 0.2
aliases:
  - CLM - It could be carried by two swallows with a bit of string between them
nodeInstanceId: 019dde98-6f6d-7b55-ae7c-47214b06f03e
---
# Summary

Anonymous castle solider posits that two strings could carry a coconut together under their dorsal guiding feathers, with a strand of creeper.

# Source of Claim

![[mp-soldier.png]]
# Notes

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
