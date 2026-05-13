---
nodeTypeId: node_LwROzkVH_Zck7ZxDgN91E
cssclasses: dg-clm
NodeFormality: draft
TruthValue: 0.65
aliases:
---
## Grounding
> "well-known authors enjoy an early citation premium, representing better odds of their work to be noticed by the community. This leads to a leg-up in early citations. But with time, this reputation effect vanishes, and preferential attachment takes over, whose rate is driven primarily by the collective perception of the inherent value of the discovery." (Wang & Barabási 2021)

The confounding of citations by reputation is front-loaded: before a paper has accumulated enough community evaluations to establish its intrinsic quality signal, author status functions as a prior. Once the paper's quality is established through the reading and citing community, the status premium decays and citations are driven by the paper's fitness (λ). This implies that citation counts accumulated over long windows are *less* confounded than early counts, and that snapshot evaluations (first-year citations, immediacy index) are more confounded than career-level or decade-level aggregates.

**Supporting evidence:**
- [[EVD - HHMI citation boost limited to articles published one year before appointment - @azoulayMatthewEffectFable2014]] — the temporal pattern in the HHMI natural experiment mirrors this: the status premium is strongest for the most recently published articles and decays for older ones
- [[EVD - Senior physicists enjoy 4x early citation premium over junior faculty from preferential attachment threshold - @wangBarabasiScienceScience2021]] — mechanistic evidence: reputation shifts the preferential attachment threshold, giving early free citations to known authors before quality dynamics take over
- [[EVD - Nobel laureate major discovery boosts citations to prior unrelated papers - @wangBarabasiScienceScience2021]] — status boosts spread to unrelated prior papers, confirming a temporary non-quality-driven component that dissipates as new quality signals accumulate

**Key caveats:**
- "Long-run" convergence to quality may take decades; most academic evaluation (tenure, grants, prizes) occurs in 5–10 year windows where the reputation effect is still substantial
- Preferential attachment itself is path-dependent: an early citation advantage from reputation can generate a self-sustaining cascade that never fully corrects, especially for papers that cross the "rich-get-richer" threshold early
- The convergence to intrinsic fitness λ is demonstrated for Physical Review papers (1950–1980); faster-moving fields with shorter citation half-lives may show different dynamics

## Other Notes
This claim provides the most direct *temporal* argument against "hopelessly confounded" — the confound is real and consequential early, but diminishes over time. It is in tension with [[CLM - Cumulative citation advantage operates as rich-get-richer dynamics independent of ongoing contribution quality]], which emphasizes self-reinforcing rather than self-correcting dynamics. Both can be partially true if early status advantages dissipate at the paper level but compound at the career level through resource accumulation. `[~T]`

## Provenance

> [!abstract]- Source tracing
> Source quotes (blockquotes) are drawn from the notes files. The mechanistic framing of the cx preferential attachment threshold and the "fitness parameter λ" language in the caveats are from training-data knowledge of Wang & Barabási `[~T]` — not from the notes files. The temporal interpretation linking the HHMI pattern to the broader reputation-decay model is analytical synthesis `[~T]`. Verify the λ/cx mechanics against the original paper.
