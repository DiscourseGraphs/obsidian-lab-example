---
nodeTypeId: node_4SqRl5RIkaUMb9fLOpdhq
template: "[[Question]]"
newNoteFolder: DiscourseGraph
tags:
  - "#matthew_effect"
cssclasses: dg-que
nodeInstanceId: 019df250-5c69-7ab1-be17-5fc22a2d42d6
aliases:
  - QUE - Is citation count a hopelessly confounded metric for evaluating researcher impact?
---

# Summary

 >[!info] Restate and elaborate upon the question in a way that helps you to find & formulate relevant claims

Citation count suffers from [[Goodhart's Law]]  and the [[Canvas - QUE - Matthew Effect]] as well as historical and present day inconsistency in its accuracy as a measure of researcher impact & productivity. Are these deficiencies overstated? Can they be overcome?
![merton|300](merton-pdf.png)

## Related QUE/CLM/EVD

> [!info] collect nodes relevant to this question that can be used to populate your discourse canvas

### EVD

[[EVD - Superstar extinction effect scales with citation count not NIH funding - @azoulaySuperstarcExtinction2008]]

[[EVD - Superstar death causes 5-10pct decline in quality-adjusted publication output of collaborators - @azoulaySuperstarcExtinction2008 1]]

[[EVD - Paper assessment reversed when eminent authorship revealed (Rayleigh anecdote) - @mertonMatthewEffectScience1968]]

[[EVD - HHMI citation boost limited to articles published one year before appointment - @azoulayMatthewEffectFable2014]]

[[EVD - HHMI citation boost falls substantially with article-level quality controls - @azoulayMatthewEffectFable2014]]

[[EVD - HHMI citation boost concentrated on novel and cross-disciplinary articles - @azoulayMatthewEffectFable2014]]

[[EVD - Equally productive scientists at lesser universities gain recognition less often - @mertonMatthewEffectScience1968]]

### CLM


[[CLM - Citations track genuine intellectual influence not merely social network position]]

[[CLM - The true causal effect of scientist status on citation rates is small and temporally limited]]

[[CLM - Status-based citation inflation is largest for novel and cross-disciplinary work - the work hardest to evaluate by other means]]

[[CLM - Naive citation count comparisons substantially overstate true status effects due to conflation with article quality]]

[[CLM - Cumulative citation advantage reflects both real quality and status amplification making the two difficult to separate]]

[[CLM - Citations track genuine intellectual influence not merely social network position]]

## Testable Hypotheses
>[!info]- Restate the question in the form of a testable hypothesis or set of hypotheses
> ![](trebek.jpg)


## Key Papers

[[@azoulay2012Matthew]]
[[@azoulay2012turn]]
[[@azoulaynber]]
[[@mertonMatthewEffectScience1968]]
[[@wangScienceScience2021]]

## Notes

> [!log] Log

```datacorejsx
return function AddLogEntry() {
  const current = dc.useCurrentFile();
  const [msg, setMsg] = dc.useState("");

  const handleClick = async () => {
    const file = app.vault.getAbstractFileByPath(current.$path);
    if (!file) return;

    const today = new Date().toISOString().slice(0, 10);
    const content = await app.vault.read(file);

    if (content.includes(`### ${today}`)) {
      setMsg(`${today} already exists`);
      return;
    }

    const sep = "\n---\n";
    const sepIdx = content.indexOf(sep);
    const insertAt = sepIdx !== -1 ? sepIdx : content.length;
    const newEntry = `\n\n### ${today}\n\n- \n`;
    await app.vault.modify(
      file,
      content.slice(0, insertAt) + newEntry + content.slice(insertAt)
    );
    setMsg(`Added ${today}`);
  };

  return (
    <span>
      <button onClick={handleClick}>+ New log entry</button>
      {msg && <span style={{ marginLeft: "0.7em", opacity: 0.55, fontSize: "0.85em" }}>{msg}</span>}
    </span>
  );
}
```

---

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