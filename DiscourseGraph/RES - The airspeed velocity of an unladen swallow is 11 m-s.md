---
nodeTypeId: node_i7PzyKw2NfkA8asBfxeey
template: "[[Result]]"
newNoteFolder: DiscourseGraph
tags:
  - avian_biomechanics
cssclasses: dg-res
contributors:
source:
aliases:
  - RES - The airspeed velocity of an unladen swallow is 11-17 meters per second
nodeInstanceId: 019dde97-f22e-780d-a5d6-89cb4a1cd106
---
## Summary
African & European swallows both flew at 11m/s in the windtunnel
![[Pasted image 20260618175027.png]]


## Grounding Context

- The first empirical result in  [[PRJ - Passarine Songbird Cargo Capacity]], from [[@analysis - measure airspeed of unladen & laden AFR & EUR swallows]]

## Finding

 wind tunnel measurements of AFR & EUR swallows show no significant differences between subtypes, converge on ~11m/s
![[bird_wind_tunnel_b-1150.jpg|400]]
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

