---
nodeTypeId: node_i7PzyKw2NfkA8asBfxeey
template: "[[Result]]"
newNoteFolder: DiscourseGraph
tags:
  - avian_biomechanics
cssclasses: dg-res
contributors:
source:
nodeInstanceId: 019df250-5c71-7f76-b1f7-b533bdbb69c5
---

## Summary

- The first empirical result  from [[@analysis - measure flight capacity of H rustica under load]]  in [[PRJ - Passarine Songbird Cargo Capacity]], informs [[QUE - Can a 5 ounce bird carry a one-pound coconut?|QUE - Can a 5 ounce bird can carry a one-pound coconut?]] negatively.

## Grounding Context


## Snippets

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

