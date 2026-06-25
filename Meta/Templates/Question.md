---
nodeTypeId: node_4SqRl5RIkaUMb9fLOpdhq
template: "[[Question]]"
newNoteFolder: DiscourseGraph
tags:
cssclasses: dg-que
nodeInstanceId: 019e877e-7e88-7591-bd65-abc5ff53b4a6
---
## Canvas

```datacorejsx
return function CanvasButton() {
  const current = dc.useCurrentFile();
  const [status, setStatus] = dc.useState("");

  const handleClick = async () => {
    const name = current.$name;
    const dgPlugin = app.plugins.plugins["discourse-graphs"];
    const folder = dgPlugin?.settings?.canvasFolderPath ?? "Discourse Canvas";
    const targetPath = `${folder}/Canvas - ${name}.md`;

    const existing = app.vault.getAbstractFileByPath(targetPath);
    if (existing) {
      setStatus("Opening existing canvas…");
      const leaf = app.workspace.getLeaf(false);
      await leaf.openFile(existing);
      await leaf.setViewState({ type: "tldraw-dg-preview", state: { file: existing.path } });
      setStatus("");
      return;
    }

    const ref = app.vault.on("create", async (file) => {
      if (file.parent?.path === folder && file.name.startsWith("Canvas-")) {
        app.vault.offref(ref);
        await app.fileManager.renameFile(file, targetPath);
      }
    });

    const ok = app.commands.executeCommandById("discourse-graphs:create-discourse-graph-canvas");
    if (!ok) {
      app.vault.offref(ref);
      setStatus("Command not found — is the Discourse Graph plugin enabled?");
    }
  };

  return (
    <span>
      <button onClick={handleClick}>
        🗺 Create Discourse Graph Canvas
      </button>
      {status && <span style={{ marginLeft: "0.5em", opacity: 0.7 }}>{status}</span>}
    </span>
  );
}
```
## Summary

## Related QUE/CLM/EVD

## Testable Hypotheses

## Key Papers

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