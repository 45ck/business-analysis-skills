---
name: as-is-process-investigator
description: Document and analyze how a business process works today (the as-is / current state), including actors, triggers, steps, decisions, handoffs, timings, delays, rework loops, pain points, exceptions, and unofficial workarounds, and separate the official process from how work actually gets done. Use this skill whenever the user wants to understand, map, describe, or audit a current process before recommending change, when the real workflow is unclear or disputed, when there are complaints or symptoms but no agreed process map, when the user shares interview notes, observation notes, SOPs, or screenshots of a workflow and asks "how does this actually work", "where are the bottlenecks", or "what is going wrong", or when preparing for process improvement, automation, system replacement, or a business case — even if they never say "as-is". Part of the business-analysis pack; hands off to to-be-process-designer, business-rule-extractor, and benefit-hypothesis-writer.
---

# as-is-process-investigator

Reconstruct how the process really works today, from evidence, so that any later redesign starts from reality instead of from the official story or from one stakeholder's opinion.

**Language:** reply in the language the user writes in. Keep names of systems, roles, and documents in the form used in the sources.

## When to use

- A change is being considered and the current process must be understood first.
- The real workflow is unclear, undocumented, or disputed between teams.
- There are complaints, delays, or errors but no agreed process map.
- Notes, interviews, or documents exist and need to be turned into a structured current-state picture.

Do not use for: designing the future process (to-be-process-designer), extracting and formalizing business rules in detail (business-rule-extractor), estimating benefits or ROI (benefit-hypothesis-writer), or producing a full BPMN diagram unless the user asks. This skill produces the findings and modeling notes that those steps consume.

## Inputs

Interview notes, observation notes, SOPs and policies, system screenshots or exports, tickets, emails, metrics, org charts, or a verbal description of the process. Record the source type of each input, because the strength of a finding depends on it. If only one source or one stakeholder group is available, say so as a coverage gap; do not generalize from it.

## Procedure

1. **Inventory evidence.** List each source, who or what it represents, and what part of the process it covers. Note missing perspectives (who was not interviewed, which system or period is not covered).
2. **Reconstruct the workflow** from multiple sources in order: trigger -> steps -> decisions -> outcome. Where sources disagree, keep both versions and mark the conflict instead of choosing one.
3. **Catalogue elements** for each step: actor/role, trigger, input and output artifacts (documents, data, system), system or tool used, decision rule or criterion, handoff to whom, typical duration and waiting time, exception paths.
4. **Separate official from actual.** Record what the documented process says, what people report doing, and what was observed. Label unofficial workarounds (spreadsheets, side emails, personal knowledge, skipped approvals) and note why they exist.
5. **Find problem areas:** bottlenecks, waiting time, rework loops, duplicate entry, manual copy between systems, unclear ownership, handoff failures, single points of knowledge, compliance or control gaps. Tie each to evidence.
6. **Assess what to keep, fix, or question.** Steps that work and should be preserved, pain points that are fixable, and items that need validation before anyone designs around them.
7. **Run the quality gates**, then produce the output.

## Evidence labels

Tag every finding with one status and its source:

- **Confirmed**: seen in two or more independent sources, or directly observed, or backed by data.
- **Reported**: stated by one source, not yet corroborated.
- **Inferred**: concluded by you from patterns; say what it is based on.
- **Disputed**: sources conflict; give both versions.

Opinions ("the approval step is pointless") stay attributed as opinions until validated. Never present Reported or Inferred findings as Confirmed.

## Quality gates

- Official and unofficial workflows are separated.
- Pain points are grounded in observed or reported evidence, with sources.
- Every finding carries an evidence label.
- Missing coverage (people, systems, periods, exception paths) is stated explicitly.
- Differing stakeholder views are kept distinct, not merged into one generic voice.
- Output is specific enough that a to-be designer could use it without re-interviewing everyone.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Process name and scope, evidence base, the 3-5 most important findings, biggest coverage gap.

## Findings
### Current-state narrative
Short end-to-end description: trigger -> main steps -> outcome.
### Official vs. actual
Where the documented process and real practice diverge, and why.
### Pain points
Each with: description, where in the process, impact, evidence label + source.
### Gaps and risks
Missing evidence, control or compliance gaps, key-person dependencies.

## Structured outputs
### Step table
| # | Step | Actor | Trigger/Input | System/Tool | Decision/Rule | Output | Duration/Wait | Evidence |
|---|---|---|---|---|---|---|---|---|
### Handoff map
| From | To | What is passed | Medium | Known problems |
|---|---|---|---|---|
### Exceptions and workarounds
| Situation | Official handling | Actual handling | Why it exists |
|---|---|---|---|
### Keep / fix / question
- Keep: ...
- Fix: ...
- Question: ...
### Candidate modeling notes
Notes for later modeling: suggested swimlanes, decision points, subprocesses, metrics worth measuring.

## Risks or tensions
Conflicting stakeholder views, political sensitivities, areas where evidence is weak.

## Open questions
Numbered; say who could answer and which finding each affects.

## Recommended next skill
to-be-process-designer when the picture is solid enough to design change; business-rule-extractor when decision rules need formalizing; benefit-hypothesis-writer when pain points need to be turned into value hypotheses.
```

## Example

Input (interview excerpt): "Orders over 10k go to the manager for approval. Honestly we just message him on WhatsApp and he says OK; the system step gets filled in afterward."

- Official: order > 10k -> approval in the system by manager before processing (source: SOP v3).
- Actual (Reported, one interviewee): approval requested by WhatsApp, system record created after the fact.
- Pain point / control gap: approval evidence outside the system; audit trail incomplete. Evidence: Reported, needs corroboration from another team or system logs.
- Workaround reason (Inferred): system approval screen is slow or inaccessible on mobile. Open question: ask the manager and check approval timestamps against order timestamps.

## Handoffs

- **to-be-process-designer**: when the as-is picture is validated enough to design the future process.
- **business-rule-extractor**: when decision criteria, thresholds, or policies need to be pulled out and formalized.
- **benefit-hypothesis-writer**: when pain points need to become measurable benefit hypotheses.

## Failure modes to avoid

- Treating weak evidence as confirmed fact.
- Confusing stakeholder opinion with validated rule or process truth.
- Describing only the official process because it is the one that is documented.
- Hiding missing coverage behind polished wording.
- Flattening politically different stakeholders into one generic audience.
- Proposing the solution (to-be) before the current state is understood.
