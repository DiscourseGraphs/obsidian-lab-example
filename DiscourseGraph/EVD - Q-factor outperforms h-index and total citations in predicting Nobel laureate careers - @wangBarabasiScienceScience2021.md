---
nodeTypeId: node_xQmEzWQFHdHy2swhrugrF
tags:
  - "#matthew_effect"
cssclasses: dg-evd
NodeFormality: draft
aliases:
source: "@wangBarabasiScienceScience2021"
supports: "[[QUE - Is citation count a hopelessly confounded metric for evaluating researcher impact?]]"
nodeInstanceId: 019e877e-7e68-7a0f-b59b-3710e74790ec
---
In a ROC analysis predicting Nobel laureate physicists, the Q-factor achieved an AUC of 0.94, outperforming h-index (0.90), highest-impact paper citations (0.88), total citations (0.86), and raw productivity (0.65).

## Description

> "the career-based Q factor wins out, predicting Nobel careers more accurately than all other measures tested in Fig. 1.6.4" ([[Wang & Barabási - 2021 - The Science of Science|p. ]])

The Q-factor captures a scientist's consistent ability to produce high-impact papers — it penalizes inconsistency and is not simply additive with publication count. Total citations rank fourth out of five in this horse race, below both Q and h-index. The practical implication: the metric most commonly used in evaluation (total citations) is among the weakest predictors of the recognized peak of scientific achievement (Nobel Prize), while a metric that explicitly discounts padding (Q) performs best.

*[~T] A survey experiment corroborates this from the human judgment side: economics professors rated CVs with *only* top publications higher than identical CVs supplemented with additional lower-tier publications (8.1 vs 7.6 out of 10). Expert human judgment implicitly applies something like a Q-factor, penalizing citation-generating but low-impact publications that inflate raw citation counts. Note: this EVD combines two distinct findings from the notes into one note — the ROC analysis and the CV survey experiment — for thematic coherence. `[~T]`*

> [!abstract]- Provenance
> The one-line summary and blockquoted Description text are drawn from the source notes files. The paragraph combining the CV survey experiment with the ROC analysis (marked `[~T]`) is analytical synthesis — these were separate findings in the notes. The full Methods Context section below was reconstructed from training-data knowledge. Verify both the ROC and CV experiment details against the original paper.

## Methods Context

### What?
ROC (receiver operating characteristic) analysis using each metric to classify physicists as future Nobel laureates vs non-laureates; AUC computed as the accuracy measure.

### How?
Each bibliometric metric (Q, h-index, top-paper citations, total citations, productivity) computed from a physicist's career record up to a fixed point; ROC curve traces true positive rate vs false positive rate across thresholds.

### Who?
Physicists in the analysis sample; Nobel laureate subset as positive cases.

## Other Notes
- The Q-factor itself is a single number — but one derived from the full distribution of a scientist's paper-level citation impacts, not just their sum. It captures *consistency* of high impact.
- Total citations (the metric at issue in the QUE) finishing 4th out of 5 is direct evidence that it is an inferior predictor of scientific achievement compared to alternatives that are just as computable from the same data.
- The CV experiment provides an independent validation: expert judgment departs from simple citation counting in exactly the direction Q predicts.
