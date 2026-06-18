---
nodeTypeId: node_Qbdr-LbBCb_WjPFNTnjTX
project: PRJ - Passarine Songbird Cargo Capacity
template: "[[Experiment]]"
status: in progress
targetQuestionOrHyp: "[[QUE - what is the airspeed velocity of an unladen swallow?|QUE - what is the airspeed velocity of an unladen swallow?]]"
tags:
  - avian_biomechanics
  - dg/source
cssclasses: dg-exp
lead: "[[@sirbelvedere]]"
contributors:
aliases:
  - "@analysis - Conduct air speed measurements under laden & unladen conditions"
dg_type: Source
keywords: ""
rating: 3
citekey: analysis - Conduct air speed measurements under laden & unl
nodeInstanceId: 019dde91-5288-73dc-b2d0-82cf010b6405
cover: "[[swallowspeed.png]]"
---



> [!Note]-
> This is a Source describing an experimental observation. This example graph uses the same naming convention ("@Source") for both literature and experimental Sources. You might choose to differentiate the two, for ex. by using "EXP" as the prefix for your own experiments, for searchability.
 # Resources
> [!info]-
> This space can be used to include any materials or context necessary to carry out or understand this experiment. 
> You can customize the template to include fields relevevant to your research.

Benchling: ==link to a cloud platform or electronic lab notebook==
Protocol: ==attached protocol file==
Github: ==link to relevant repos==


![alt text](swallowspeed.png)

#  Results
>[!info]-
>This section collects Results from this Experiment in a Base. To find issue 7 result candidates, use the built-in search function on the top left menu to search for e.g. "tag:#iss-candidate @analysis - Conduct air speed measurements" to find issue candidates  linked to this  Experiment page throughout your graph

![[Results.base#Results from this Experiment]]

![[Issues.base#Issues in this Page ]]
# Todos
```tasks
not done
(path includes {{query.file.path}}) OR (path includes Daily Notes AND description includes {{query.file.filenameWithoutExtension}})
```

> [!log] Log

>[!info]-
>For experiments taking place over several days/weeks, moths, you can log your observations here. 
### 2026-04-30
-  [[RES - The airspeed velocity of an unladen swallow is 11 m-s]]
- #iss-candidate turkey drop experiment failed to replicate
	- #clm-candidate as God is my witness, I thought turkeys could fly
### 2026-04-24
-  #hyp-candidate velocity will fall between 11-17 m/s
- [ ] #task when you add ToDos to your Experimental log they show up in this query 📅 2026-05-05 
### 2026-02-06
- [[ISS - better weather measurements needed]]
- weather disproportionately affects laden condition #iss-candidate 
### 2026-02-05
- coconut shape highly variable #iss-candidate 
- European swallows are more  homogeneous in size & speed #res-candidate 
- African swallows seem a bit faster #res-candidate 




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
> [!info]-
> This space will collect ToDos related to this experiment from elsewhere in your graph, as long as they are tagged with [[@analysis - measure airspeed of unladen & laden AFR & EUR swallows]]