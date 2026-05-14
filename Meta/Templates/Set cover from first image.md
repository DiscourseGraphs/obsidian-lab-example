<%*
const file = app.vault.getAbstractFileByPath(tp.file.path(true));
const content = await app.vault.read(file);

// Match Obsidian embed ![[file.ext]] or Markdown image ![alt](file.ext)
const wikiMatch = content.match(/!\[\[([^\]|]+\.(jpe?g|png|gif|svg|webp))[^\]]*\]\]/i);
const mdMatch   = content.match(/!\[[^\]]*\]\(([^)]+\.(jpe?g|png|gif|svg|webp))[^)]*\)/i);

const imageName = wikiMatch ? wikiMatch[1] : mdMatch ? mdMatch[1] : null;

if (imageName) {
  await app.fileManager.processFrontMatter(file, fm => {
    fm.cover = `[[${imageName}]]`;
  });
  new Notice(`Cover set: ${imageName}`);
} else {
  new Notice("No image found in this file.");
}
%>
