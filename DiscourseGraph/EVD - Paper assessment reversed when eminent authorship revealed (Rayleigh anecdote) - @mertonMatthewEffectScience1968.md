---
nodeTypeId: node_xQmEzWQFHdHy2swhrugrF
tags:
  - "#matthew_effect"
cssclasses: dg-evd
centrality:
nodeInstanceId: 019df250-5c4c-7d84-9c21-fc7671ed3ff3
source: "@mertonMatthewEffectScience1968"
supports: "[[QUE - Is citation count a hopelessly confounded metric for evaluating researcher impact?]]"
---
Lord Rayleigh submitted a paper to the British Association for the Advancement of Science without his name attached; it was rejected as the work of a "paradoxer." When the authorship was discovered, the committee reversed its judgment and found the paper to have merit.

## Description

> "an experiencing Lord Rayleigh's provides an example in which an appraisal of a paper was reversed once its eminent authorship became known. Rayleigh's name 'was either omitted or accidentally detached [from a manuscript], and the Committee [of the British Association for the Advancement of Science] turned it down as the work of one of those curious persons called paradoxers. However, when the authorship was discovered, the paper was found to have merits after all.'" ([[Merton - Matthew Effect on Science.pdf#page=7|p. 7]])

This is a qualitative/anecdotal observation but illustrates the mechanism precisely: the evaluation of scientific work is not conducted blindly on its merits but is inflected by knowledge of who produced it. The same content received opposite evaluations depending on attributed authorship.

Merton also cites Barber's documentation of how "slight professional standing of certain scientists has on occasion led to some of their work, later acknowledged as significant, being refused publication altogether." ([[Merton - Matthew Effect on Science.pdf#page=7|p. 7]])

And the inverse: the history of science has cases of "basic papers having been written by comparatively unknown scientists, only to be neglected for years" — Waterston (kinetic theory rejected by Royal Society as "nothing but nonsense"), Mendel (heredity papers ignored), Fourier (heat propagation paper waited 13 years for publication). ([[Merton - Matthew Effect on Science.pdf#page=7|p. 7]])

## Methods Context

### What?
Patterns of recognition/rejection in science based on author status.

### How?
Qualitative analysis drawing on diaries, letters, notebooks, biographies, and interviews with 41 US Nobel laureates (conducted by Harriet Zuckerman).

### Who?
Historical cases in science; primary data from Zuckerman's interviews with US Nobel laureates.

## Other Notes
- This EVD speaks to the *upstream* confound: if publication itself is gated by author status, then citation counts (which require prior publication) inherit this systematic bias at the source.
- Merton frames this as the Matthew effect becoming "an idol of authority" that "violates the norm of universalism embodied in the institution of science." ([[Merton - Matthew Effect on Science.pdf#page=7|p. 7]])


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
