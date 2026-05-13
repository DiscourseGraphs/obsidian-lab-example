---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
tags:
  - avian_biomechanics
cssclasses: dg-clm
confidence: 0.7
aliases:
  - CLM - Vertebrate fliers can lift roughly 6× their flight muscle mass at takeoff.
nodeInstanceId: 019dde99-2cf6-79da-99ce-2b18280a8497
---
# Summary

> [!tip]- 
> Here you can restate or expand upon the Claim or feframe it in a way that emphasises its relevance to your Question

If these birds can lift 6X their flight muscle mass at takeoff, then a 5 ounce bird carrying 1/5X of its total mass is plausible.


# Source of Claim
> [!tip]-
> If you are already aware of some Evidence supporting your Claim, link it and its Source here. It's fine to be your own source of Claims!
![alt text](image%201.png)
>  

[[EVD - Max lift per unit flight muscle mass ~ 54-63N-kg]]
	SupportedBy
		 [@mardenMaximumLiftProduction1987]


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
