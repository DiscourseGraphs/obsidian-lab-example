---
nodeTypeId: node_xQmEzWQFHdHy2swhrugrF
cssclasses: dg-evd
NodeFormality: draft
aliases:
source: "@wangBarabasiScienceScience2021"
supports: "[[QUE - Is citation count a hopelessly confounded metric for evaluating researcher impact?]]"
---
Analysis of citation dynamics in physics found that well-known senior physicists had a preferential attachment threshold approximately four times higher than junior faculty (cx ≈ 40 vs cx ≈ 10), meaning new papers by senior authors receive four times as many reputation-driven citations before quality dynamics take over.

## Description

> "for a group of well-known physicists, preferential attachment turns on only after the paper has acquired around 40 citations (cx ≈ 40)... for junior faculty in physics (assistant professors), cx drops from 40 to 10. In other words, right after its publication a senior author's paper is four times more likely to be cited than a junior author's." ([[Wang & Barabási - 2021 - The Science of Science|p. ]])

*[~T] The cx parameter (preferential attachment crossover) marks the point below which the linear preferential-attachment rate breaks down: for c < cx, "additional forces provide a citation boost which elevates c(t) to deviate from what is predicted by the pure preferential attachment mechanism" (Wang & Barabási, Fig. 1.3.1 caption). Above cx, citations follow pure preferential attachment driven by the paper's intrinsic quality. Below cx, the reputation boost pushes citations* above *what quality alone would predict — not a "flat rate" but an elevated rate.* Senior authors have a much higher cx: they receive many more early reputation-driven citations before quality dynamics take over, effectively giving their papers a four-fold head start. `[~T]`

> [!abstract]- Provenance
> The one-line summary and blockquoted Description text are drawn from the source notes files. The mechanistic explanation of the cx parameter (marked `[~T]`) is training-data knowledge of the Wang & Barabási model — not from the source notes files. The full Methods Context section below was also reconstructed from training-data knowledge. Verify model mechanics and sample details against the original paper.

## Methods Context

### What?
Estimation of the preferential attachment onset threshold cx — the citation count at which a paper transitions from reputation-driven to quality-driven citation accumulation — separately for senior physicists and junior faculty.

### How?
Fitting citation dynamics models (distinguishing flat early-citation regime from power-law preferential attachment regime) to empirical citation trajectories for two groups.

### Who?
Well-known senior physicists and assistant-professor-level junior faculty in physics.

## Other Notes
- This provides a mechanistic, quantitative account of why reputation effects are front-loaded: the early citation period is where reputation substitutes for quality, and senior authors spend much more of the early life of their papers in this regime.
- The 4x early premium does not imply a 4x long-run premium — once both papers have cleared their respective cx thresholds, quality dynamics drive the same proportional growth. The advantage is in the head start.
- See also the HHMI temporal pattern (boost concentrated on most recently published articles) as an independent source converging on the same conclusion: the reputation effect is strongest when quality evidence is scarcest.
