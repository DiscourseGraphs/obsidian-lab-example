---
nodeTypeId: node_8eLgGKXiSzIWJvcrGCBFE
template: "[[Hypothesis]]"
tags:
cssclasses: dg-hyp
confidence: 0.9
nodeInstanceId: 019ddeb1-d64d-7eb6-a5fb-11e630810045
aliases:
  - HYP- The loadbearing capacity of a 5 ounce bird ranges 5-20g at different points in flight
---

# Rationale

>[!info]-
>This space can be used to detail  the rationale  for the hypothesis, referencing evidence as necessary. In this example, since the HYP was surfaced in a lit review, I already have the beginnings of an evidence scaffold.

- Supported by 147 spp weight-loading data from [@mardenMaximumLiftProduction1987]
- Supported by Harris hawk loading in [@pennycuickBirdFlightPerformance1989]
- Supported by barn swallow energetics in [@schmidt-wellenburgEnergyExpenditureWing2007]

# Context
> [!info]-
> Here I'll add the source of the original idea, a conversation with Sir Belvedere.

- h/t convo with [[@sirbelvedere]]

# Requests for Experiments

>[!info]-
>This space can be used to brainstorm Issues (Experiments) or other discourse nodes - for example, I realize that there's a sharper formulation of this Hypothesis I might want to keep on deck.

- #iss-candidate gather weight-loading data for _Hirundo rustica_
- #hyp-candidate empirical and mathematical estimates of 5 oz bird load capacity converge to within 20%

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

