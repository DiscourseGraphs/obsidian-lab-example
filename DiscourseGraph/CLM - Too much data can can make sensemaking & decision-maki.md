---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
tags:
cssclasses: dg-clm
confidence:
nodeInstanceId: 019e877e-7e75-7032-b846-86a9ed66cada
aliases:
  - CLM - Too much data can can make sensemaking & decision-making harder
---
# Summary

# Source of Claim

[[@CedricChin - CommonCog]]

# Notes
[[CLM - performance degrades when an analyst is fed too much data]]- [[@Klein et al]]


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

![[information_analysis.png]]
