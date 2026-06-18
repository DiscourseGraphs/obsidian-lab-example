<%*
const originalFile = app.workspace.getActiveFile();
if (!originalFile) { new Notice("No active file."); return; }
const content = await app.vault.read(originalFile);

const wikiMatch = content.match(/!\[\[([^\]|]+\.(jpe?g|png|gif|svg|webp))[^\]]*\]\]/i);
const mdMatch   = content.match(/!\[[^\]]*\]\(([^)]+\.(jpe?g|png|gif|svg|webp))[^)]*\)/i);

const imageName = wikiMatch ? wikiMatch[1] : mdMatch ? mdMatch[1] : null;

if (imageName) {
  await app.fileManager.processFrontMatter(originalFile, fm => {
    fm.cover = `[[${imageName}]]`;
  });
  new Notice(`Cover set: ${imageName}`);
} else {
  new Notice("No image found in this file.");
}

// If Templater created a new file (invoked via "create new note"), clean it up
const createdPath = tp.file.path(true);
if (createdPath !== originalFile.path) {
  const createdFile = app.vault.getAbstractFileByPath(createdPath);
  if (createdFile) {
    await app.vault.trash(createdFile, false);
    app.workspace.getLeaf(false).openFile(originalFile);
  }
}
%>
