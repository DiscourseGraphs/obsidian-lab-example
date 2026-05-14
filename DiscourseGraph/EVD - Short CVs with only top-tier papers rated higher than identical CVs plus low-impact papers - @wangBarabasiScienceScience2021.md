---
nodeTypeId: node_xQmEzWQFHdHy2swhrugrF
tags:
  - "#matthew_effect"
cssclasses: dg-evd
NodeFormality: draft
aliases:
source: "@wangBarabasiScienceScience2021"
supports: "[[QUE - Is citation count a hopelessly confounded metric for evaluating researcher impact?]]"
---
In a survey experiment, economics professors rated fabricated CVs listing only top-tier publications at 8.1 out of 10, while CVs containing the same top papers plus additional lower-tier publications received only 7.6 — showing that extra low-impact papers actively lowered expert evaluations.

## Description

> "the short CVs listing only top publications received a rating of 8.1. The long CVs—which, remember, contained the same top-tier papers as the short CVs but with additional lower-tiered publications—received an average rating of 7.6." ([[Wang & Barabási - 2021 - The Science of Science|p. ]])

This finding directly contradicts the logic of citation-count maximization: adding publications that individually increase total citations, publication count, and h-index caused expert evaluators to *lower* their assessments. Expert judgment implicitly applies a quality-penalizing-inconsistency heuristic — something closer to the Q-factor than to total citation count. `[~T]` The gap between how experts evaluate scientists and how citation metrics rank them is not random noise; it has a systematic direction. `[~T]`

> [!abstract]- Provenance
> The one-line summary and blockquoted Description text are drawn from the source notes files. Explanatory sentences outside blockquotes (marked `[~T]`) and the full Methods Context section below were reconstructed from training-data knowledge of the paper — not from the notes files. Verify experimental design details against the original paper.

## Methods Context

### What?
Survey experiment presenting economics professors with fabricated CVs, varied between two conditions: short CV (top-tier publications only) vs long CV (same top-tier publications plus additional lower-tier publications).

### How?
Randomized between-subjects design; each professor rated one version of the CV on a 10-point quality scale. The additional papers in the long CV were held constant across comparisons.

### Who?
Economics professors serving as expert evaluators; fabricated CV profiles as stimuli.

## Other Notes
- The experimental design cleanly isolates the effect of adding low-impact papers while holding the high-impact paper set constant — directly showing that cumulative citation count (which increases with more papers) diverges from expert quality judgment.
- The finding is from economics professors evaluating hypothetical economists; whether the pattern holds across disciplines with different publication norms is an open question.
- Paired with the Q-factor ROC result, this constitutes a two-pronged argument: total citations underperform both algorithm-based and human expert predictions of scientific merit.
