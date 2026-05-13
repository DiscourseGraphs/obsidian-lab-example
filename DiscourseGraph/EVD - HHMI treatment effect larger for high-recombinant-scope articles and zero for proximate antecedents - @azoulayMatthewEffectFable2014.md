---
nodeTypeId: node_xQmEzWQFHdHy2swhrugrF
cssclasses: dg-evd
NodeFormality: draft
aliases:
source: "@azoulayMatthewEffectFable2014"
supports: "[[QUE - Is citation count a hopelessly confounded metric for evaluating researcher impact?]]"
nodeInstanceId: 019e2324-c328-7c0d-a305-f7f47d10f9dd
---
The post-appointment HHMI citation premium was significantly larger for articles that drew on work from outside the focal field (high recombinant scope) and was statistically indistinguishable from zero for articles building on intellectually proximate antecedents.

## Description

> "we find that the effect of the status shock is much greater for articles that are high in recombinant scope. In fact, the results show that the HHMI treatment effect for articles that build on intellectually proximate antecedents does not statistically differ from zero." ([[Azoulay et al. - 2014 - Matthew Effect or Fable.pdf#page=26|p. 26]])

*[~T] Recombinant scope is measured using PubMed's "related articles" algorithm, which combines MeSH keywords, abstract words, and title words to identify each referenced article's nearest neighbours and thereby delineate a scientific "field" around each source publication. A focal article has high recombinant scope if its references draw disproportionately from outside this neighbourhood — i.e., it combines ideas from intellectually distant areas.* High-scope articles are harder for domain specialists to evaluate, making author reputation a more influential quality cue. `[~T]`

> [!abstract]- Provenance
> The one-line summary and blockquoted Description text are drawn from the source notes files. Explanatory sentences outside blockquotes (marked `[~T]`) and the full Methods Context section below were reconstructed from training-data knowledge of the paper — not from the notes files. Verify operationalization, sample details, and design specifics against the original paper.

## Methods Context

### What?
Heterogeneous treatment effect analysis interacting HHMI appointment with an article-level measure of recombinant scope (whether references draw on MeSH categories outside the focal article's primary category).

### How?
Regression of post-appointment citation rates on HHMI treatment × recombinant scope interaction, within the matched HHMI-ECPW article pair framework. Recombinant scope operationalized as a binary indicator derived from MeSH co-occurrence patterns.

### Who?
Pre-appointment article pairs from the HHMI-ECPW matched sample in biomedical science.

## Other Notes
- This result is the strongest within-study evidence that status inflation is not random noise but a *systematic* function of evaluative difficulty — and therefore most harmful in the places where alternative quality signals are weakest.
- Together with the JIF and novelty heterogeneity results, this forms a coherent picture: status substitutes for quality information wherever such information is scarce.
