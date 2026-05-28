---
nodeTypeId: node_Qbdr-LbBCb_WjPFNTnjTX
template: "[[Experiment]]"
newNoteFolder: DiscourseGraph
aliases:
  - "@analysis - determine flight capacity of H rustica under load"
tags:
  - avian_biomechanics
  - dg/source
cssclasses: dg-exp
status: seed
lead:
contributors:
targetQuestionOrHyp: "[[QUE - Can a 5 ounce bird carry a one-pound coconut?|QUE - Can a 5 ounce bird can carry a one-pound coconut?]]"
project:
nodeInstanceId: 019df250-5c53-761f-9aca-70d2d32f8d68
dg_type: Source
keywords: ""
rating: 3
citekey: analysis - determine flight capacity of H rustica under load empirically
cover: "[[windtunnel.PNG]]"
---

# Resources

### Key References

[[[@mardenMaximumLiftProduction1987]]

[[@kvistCarryingLargeFuel2001]]

[[@parkFlightKinematicsBarn2001]]


####  Experimental setup

![[windtunnel.PNG]]

# Results

![[Results.base#Results from this Experiment]]
# Todos

```tasks
not done
(path includes {{query.file.path}}) OR (path includes Daily Notes AND description includes {{query.file.filenameWithoutExtension}})
```


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
    const fmEnd = content.indexOf(sep, 3); // end of frontmatter
    const sepIdx = content.indexOf(sep, fmEnd + 5); // first --- after frontmatter
    const insertAt = sepIdx !== -1 ? sepIdx : content.length;
    const newEntry = `\n\n### ${today}\n\n- \n\n`;
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




### 2026-05-04
-  #res-candidate 10g at burst takeoff
### 2026-05-01
-  #res-candidate 3g during migratory events
### 2026-04-30
- [[RES - 5g max load at sustained cruising]]

### 2026-04-21

- new Question from [[[@directquote-that guy on the bridge]]]: [[QUE - What is the airspeed velocity of an unladen swallow?]]
>[!tip] This question  will eventually spawn a new research chain. Data gathered in the course of investigating this target question will bear on [[QUE - what is the airspeed velocity of an unladen swallow?|QUE - what is the airspeed velocity of an unladen swallow?]] - and spawn a counter-question that knocks the bridge troll off his feet

---
> [!log] From daily notes

```datacorejsx
return function View() {
  const current = dc.useCurrentFile();
  const [mentions, setMentions] = React.useState(null);

  React.useEffect(() => {
    if (!current) return;
    const topicTags = (current.$tags ?? [])
      .map(t => String(t).replace(/^#+/, "").trim())
      .filter(t => t && !t.startsWith("dg/"));
    if (!topicTags.length) { setMentions({}); return; }
    let live = true;
    (async () => {
      const vault = dc.app.vault;
      const mcache = dc.app.metadataCache;
      const byTag = {};
      for (const tag of topicTags) byTag[tag] = [];
      for (const file of vault.getMarkdownFiles()) {
        if (file.path === String(current.$path)) continue;
        const cache = mcache.getFileCache(file);
        const hits = (cache?.tags ?? []).filter(
          tc => topicTags.includes(tc.tag.replace(/^#/, "").trim())
        );
        if (!hits.length) continue;
        const text = await vault.cachedRead(file);
        if (!live) return;
        const lines = text.split('\n');
        for (const tc of hits) {
          const tag = tc.tag.replace(/^#/, "").trim();
          byTag[tag].push({
            path: file.path,
            name: file.basename,
            line: (lines[tc.position.start.line] ?? "").trim()
          });
        }
      }
      if (live) setMentions(byTag);
    })();
    return () => { live = false; };
  }, [String(current?.$path)]);

  if (!current || mentions === null)
    return <p><em>Scanning…</em></p>;
  const topicTags = (current.$tags ?? [])
    .map(t => String(t).replace(/^#+/, "").trim())
    .filter(t => t && !t.startsWith("dg/"));
  if (!topicTags.length)
    return <p><em>No topic tags in frontmatter.</em></p>;
  return (
    <div>
      {topicTags.map((tag, i) => {
        const items = mentions[tag] ?? [];
        return (
          <div key={i}>
            <strong>#{tag}</strong>
            {!items.length
              ? <p style={{marginLeft:"1em"}}><em>No mentions.</em></p>
              : <ul>
                  {items.map((m, j) => {
                    const href = m.path.replace(/\.md$/, "");
                    const text = m.line
                      .replace(/#\S+/g, "")
                      .replace(/^[-*>\s]+/, "")
                      .trim();
                    return (
                      <li key={j}>
                        <a href={href}
                          className="internal-link"
                          data-href={href}
                        >{m.name}</a>
                        {text ? ` — ${text}` : ""}
                      </li>
                    );
                  })}
                </ul>
            }
          </div>
        );
      })}
    </div>
  );
}
```

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
