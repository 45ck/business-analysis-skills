---
name: benefit-hypothesis-writer
description: Turn proposed process or system changes into explicit, testable benefit hypotheses ("if we change X for Y, we expect Z because A") with baselines, leading and lagging success measures, targets, assumptions, dependencies, and evidence gaps. Use this skill whenever the user needs to justify a change, build or strengthen a business case, explain "why this matters" or "what value we get", define KPIs, success metrics, OKRs, or expected outcomes for a project or feature, estimate benefits or ROI inputs, prepare a benefits section for a charter or steering committee, or when a proposal's value is vague or hand-wavy — even if they never say "hypothesis". Part of the business-analysis pack; usually follows as-is-process-investigator and to-be-process-designer, and hands off to stakeholder-communication-planner, project-charter-writer, and requirements-prioritizer if present.
---

# benefit-hypothesis-writer

Make the expected value of a change explicit and testable: what will improve, for whom, by how much, how it will be measured, and what must be true for it to happen. A benefit stated this way can later be confirmed or refuted instead of argued about.

**Language:** reply in the language the user writes in. Keep metric names and system names as used in the sources.

## When to use

- A change is proposed but its benefit case is weak, vague, or based on enthusiasm.
- Stakeholders ask why the change matters or what value it brings.
- Success metrics, KPIs, or targets need to be defined before or after delivery.
- Analysis findings (as-is pain points, to-be design) need to be bridged to business value.

Do not use for: discovering the current process (as-is-process-investigator), designing the future process (to-be-process-designer), building a full financial model or NPV calculation (this skill produces the hypotheses and inputs for one, not the model), or prioritising requirements (requirements-prioritizer). If the problem or the change itself is unclear, say so and recommend clarifying it first rather than writing benefits for a moving target.

## Inputs

Problem statement, as-is findings and pain points, to-be proposal, stakeholder goals, available baseline data (volumes, times, error rates, costs, satisfaction scores). Record what each benefit is based on. If no baseline exists, do not invent one: mark it `[BASELINE NEEDED]` and propose how to measure it.

## Benefit types (classify every hypothesis)

- **Direct**: follows immediately from the change (fewer manual steps -> less handling time).
- **Indirect**: follows through a further mechanism (less handling time -> staff can process more orders -> revenue).
- **Uncertain upside**: plausible but weakly evidenced or dependent on behaviour change or market reaction.

Also tag the value area: cost, time, quality/errors, revenue, risk/compliance, customer or employee experience, capability. Keep financial and non-financial benefits distinguishable.

## Procedure

1. **Link change to problem.** For each proposed change, name the baseline problem or pain point it addresses, with its source. A change with no linked problem is a finding, not a benefit.
2. **Write the hypothesis** in the form: *If we change [X] for [Y context / affected group], we expect [Z measurable outcome] because [A causal mechanism].* One outcome per hypothesis. Name the beneficiary; different stakeholder groups get separate hypotheses if they benefit differently.
3. **Make it measurable.** For each hypothesis define:
   - **Lagging measure**: the outcome itself (cost per order, cycle time, error rate).
   - **Leading measure**: an early signal that the mechanism works (adoption rate, % of cases using the new step).
   - **Baseline**: current value with source, or `[BASELINE NEEDED]`.
   - **Target**: expected value, with range if uncertain; if no basis exists, `[TARGET TBD]` and who should set it.
   - **Time to benefit**: when the effect should become visible.
   - **Measurement method**: data source, who measures, how often.
4. **Expose the causal chain.** Spell out the steps between change and outcome. Each link that is not evidenced becomes an assumption.
5. **Capture assumptions and dependencies.** What must be true (users adopt, volumes stay stable, another system delivers data) and what the benefit depends on (other projects, teams, decisions). Number them.
6. **Record evidence gaps.** Missing baselines, untested mechanisms, single-source claims, stakeholder opinions not yet validated.
7. **Check for negative effects and double counting.** Note dis-benefits (extra work elsewhere, transition dip, new costs) and benefits that are claimed twice under different names.
8. **Rate confidence** for each hypothesis: High (evidence and baseline exist), Medium (partial evidence), Low (mostly assumption). Run the quality gates and produce the output.

## Writing rules

- Causal logic must be explicit; "will improve efficiency" is not a hypothesis.
- Never present an estimate as a measured fact; label every number as Measured, Estimated (state basis), or TBD.
- Stakeholder statements ("this will save hours") are opinions until backed by data; attribute them.
- Do not merge stakeholder groups with different interests into one generic "the business".
- Number hypotheses (BH-1, BH-2, ...) and link assumptions (ASM-n) and gaps (GAP-n) to them.
- Short structured statements over prose.

## Quality gates

- Every hypothesis follows the if / for / expect / because form and names a beneficiary.
- Every hypothesis is measurable where possible, with leading and lagging measures, baseline status, and target status.
- Causal logic is explicit; unevidenced links appear as assumptions.
- Every number is labelled Measured, Estimated, or TBD.
- Assumptions, dependencies, evidence gaps, and dis-benefits are visible.
- Direct, indirect, and uncertain benefits are separated; no double counting.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
The change(s), number of hypotheses by type and confidence, the strongest and the weakest benefit claims, key evidence gap.

## Findings
Changes with no linked problem, unsupported claims, double counting, dis-benefits.

## Structured outputs
### Benefit hypotheses
- **BH-1** (Direct, Cost, Confidence: Medium): If we change X for Y, we expect Z because A. Beneficiary: ...
### Success measures
| BH | Lagging measure | Leading measure | Baseline (status) | Target (status) | Time to benefit | Measurement method / owner |
|---|---|---|---|---|---|---|
### Causal chains
- BH-1: change -> mechanism -> outcome (unevidenced links marked as ASM-n)
### Assumptions and dependencies
| ID | Statement | Type (assumption/dependency) | Linked BH | Evidence status |
|---|---|---|---|---|
### Evidence gaps
| ID | Gap | Linked BH | How to close it |
|---|---|---|---|
### Dis-benefits and side effects
- ...

## Risks or tensions
Stakeholders with conflicting expectations of value, benefits one group gains at another's cost, politically sensitive claims.

## Open questions
Numbered; say who could answer and which hypothesis each affects.

## Recommended next skill
stakeholder-communication-planner to communicate the value case per audience; project-charter-writer (if present) to include benefits in the charter; requirements-prioritizer (if present) to rank work by expected benefit.
```

## Example

Input: as-is finding "Invoices are typed manually from PDF into the ERP; ~12 minutes each, ~1,500 per month, 4% need correction" (source: process observation + team estimate). To-be: automated invoice capture.

- **BH-1** (Direct, Time, Confidence: Medium): If we introduce automated invoice capture for the accounts payable team, we expect handling time per invoice to drop from ~12 to ≤4 minutes because data is extracted automatically and staff only verify it.
  - Lagging: average handling time per invoice. Leading: % of invoices processed without manual retyping.
  - Baseline: 12 min (Estimated, team estimate; GAP-1: measure on a 2-week sample). Target: ≤4 min (Estimated, vendor claim -> ASM-2).
- **BH-2** (Direct, Quality, Confidence: Low): ... error rate from 4% to ≤1% because of fewer keying errors. ASM-3: extraction accuracy on our supplier formats is at least as good as manual entry.
- **BH-3** (Indirect, Cost): freed capacity of ~200 hours/month (1,500 × 8 min, Estimated) can absorb volume growth without hiring. ASM-4: freed time is actually redeployed, not lost.
- Dis-benefit: verification workload during the first months while the tool learns formats.

## Handoffs

- **stakeholder-communication-planner**: to present the value case to different audiences.
- **project-charter-writer** (if present): to put benefits, measures, and assumptions into the charter.
- **requirements-prioritizer** (if present): to prioritise requirements by the benefit they unlock.

## Failure modes to avoid

- Presenting weak evidence or vendor claims as confirmed fact.
- Confusing stakeholder opinion with validated benefit.
- Writing vague benefits ("better efficiency") without measure, baseline, or mechanism.
- Inventing baselines or targets to make the case look complete.
- Double counting the same benefit under different names, or ignoring dis-benefits.
- Hiding missing coverage behind polished wording.
- Flattening politically different stakeholders into one generic audience.
