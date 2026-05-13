---
nodeTypeId: node_8eLgGKXiSzIWJvcrGCBFE
template: "[[Hypothesis]]"
tags:
  - avian_biomechanics
cssclasses: dg-hyp
confidence: 0.8
nodeInstanceId: 019ddeb2-73c4-7350-a272-a7bb640d8e80
aliases:
  - HYP- The loadbearing capacity of a 5 ounce bird can be estimated mathematically
---

# Rationale

>[!info]-
> The points below can be turned into Evidence nodes later, as the Hypothesis is refined.

- Supported by power curve derivation in [@pennycuickPowerRequirementsHorizontal1968]
- Supported by [@pennycuickBirdFlightPerformance1989]
- Supported by lift ≈ 6× muscle mass calc in  [@mardenMaximumLiftProduction1987]
- Supported by optimal speed model in [@hedenstromOptimalFlightSpeed1995]

# Context

- h/t conversation with [[@sirLancelot]]

# Requests for Experiments

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
>[!info]-
>This space can be used to brainstorm Issues (Experiments) or other discourse nodes - for example, I realize that there's a sharper formulation of this Hypothesis I might want to keep on deck.

- #iss-candidate update body drag coefficients calibrated against wind tunnel data