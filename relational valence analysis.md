# Relational valence analysis — Matthew effect nodes

Valence is relative to the research question: **Is citation count hopelessly confounded as a measure of scientific impact?**

- **supports** — argues counts ARE substantially confounded
- **opposes** — argues counts are NOT hopelessly confounded (still meaningful)
- **informs** — complicates or contextualizes without taking a side

Strength scale 1–5 (from citation-confound-analysis.md).

---

## CLM nodes 

| Node | Analysis code | Valence | Strength |
|------|--------------|---------|----------|
| CLM - Naive citation count comparisons substantially overstate true status effects | clm001 | supports | 4 |
| CLM - Status serves as a social cue conveying most information when quality uncertain | clm003 | supports | 3 |
| CLM - Status-based citation inflation is largest for novel and cross-disciplinary work | clm003 (specific) | supports | 3 |
| CLM - Team size and collaboration patterns inflate citation counts | clm028 | supports | 5 |
| CLM - Cumulative citation advantage reflects both real quality and status amplification | synthesis (clm005 + clm018) | informs | 3 |
| CLM - The true causal effect of scientist status on citation rates is small and temporally limited | clm002 / clm005 | opposes | 4 |
| CLM - The reputation effect on early citations is real but temporary | clm024 | opposes | 4 |
| CLM - Citations track genuine intellectual influence not merely social network position | clm008 / clm009 | opposes | 3 |

---

## EVD nodes → vault CLM relations

| EVD | CLM | Relation |
|-----|-----|----------|
| HHMI citation boost falls substantially with article-level quality controls | Naive citation count comparisons substantially overstate | supports |
| HHMI citation boost falls substantially with article-level quality controls | True causal effect of scientist status is small and temporally limited | informs |
| HHMI citation boost falls substantially with article-level quality controls | Cumulative citation advantage reflects both real quality and status amplification | informs |
| HHMI citation boost limited to year before appointment | True causal effect of scientist status is small and temporally limited | supports |
| HHMI citation boost limited to year before appointment | Reputation effect on early citations real but temporary | supports |
| HHMI citation boost concentrated on novel/cross-disciplinary articles | Status serves as a social cue | supports |
| HHMI citation boost concentrated on novel/cross-disciplinary articles | Status-based citation inflation largest for novel work | supports |
| HHMI citation premium twice as large for low-JIF journals | Status serves as a social cue | supports |
| HHMI citation premium twice as large for low-JIF journals | Status-based citation inflation largest for novel work | supports |
| HHMI treatment effect larger for recombinant-scope, zero for proximate antecedents | Status serves as a social cue | supports |
| HHMI treatment effect larger for recombinant-scope, zero for proximate antecedents | Status-based citation inflation largest for novel work | supports |
| Less eminent HHMI investigators experience larger post-appointment premium | True causal effect of scientist status is small and temporally limited | informs |
| Superstar extinction effect scales with citation count not NIH funding | Citations track genuine intellectual influence | supports |
| Superstar death causes 5-10pct decline in collaborator output | Citations track genuine intellectual influence | supports |
| Senior physicists enjoy 4x early citation premium | Reputation effect on early citations real but temporary | supports |
| Senior physicists enjoy 4x early citation premium | Citations track genuine intellectual influence | informs |
| Nobel laureate major discovery boosts citations to prior unrelated papers | Naive citation count comparisons substantially overstate | supports |
| Nobel laureate major discovery boosts citations to prior unrelated papers | Team size and collaboration patterns inflate citation counts | supports |
| WSDM 2017 — well-known authors 63pct more likely accepted under single-blind review | Naive citation count comparisons substantially overstate | supports |
| WSDM 2017 — well-known authors 63pct more likely accepted under single-blind review | Team size and collaboration patterns inflate citation counts | supports |
| Female economists receive zero tenure credit for coauthored papers with men | Team size and collaboration patterns inflate citation counts | supports |
| Paper assessment reversed when eminent authorship revealed (Rayleigh) | Naive citation count comparisons substantially overstate | supports |
| Equally productive scientists at lesser universities gain recognition less often | Naive citation count comparisons substantially overstate | supports |
| Q-factor outperforms h-index and total citations in predicting Nobel laureate careers | *(no vault CLM — gap: clm025/26 not yet instantiated)* | — |
| Short CVs rated higher than identical CVs plus low-impact papers | *(no vault CLM — gap: clm025/26 not yet instantiated)* | — |

---

## Notes

**HHMI citation boost falls substantially** is the only double-faced EVD: it supports `Naive citation count comparisons overstate` (naive comparisons mislead) while simultaneously informing `True causal effect is small` (the properly-controlled confound is modest). Both readings are correct; the EVD grounds different claims depending on which framing is in view.

**Q-factor** and **Short CVs** EVDs have no corresponding vault CLM. The analysis codes they ground (clm025: "no single metric fully captures contribution"; clm026: "Q-factor better captures expert evaluation than cumulative metrics") represent a gap in the vault's CLM layer worth filling.
