---
name: "benefit-hypothesis-writer"
pack: "business-analysis-pack"
purpose: "Turn proposed process or system changes into explicit benefit hypotheses with measurable expected outcomes and assumptions."
inputs: ["problem statement", "as-is findings", "to-be proposal", "stakeholder goals", "baseline pain points"]
outputs: ["benefit hypotheses", "success measures", "dependency assumptions", "evidence gaps"]
handoffs: ["stakeholder-communication-planner", "project-charter-writer if present", "requirements-prioritizer if present"]
---
# benefit-hypothesis-writer

## Purpose
Turn proposed process or system changes into explicit benefit hypotheses with measurable expected outcomes and assumptions.

## Trigger this skill when
- A change is being proposed but the benefit case is weak or hand-wavy.
- Stakeholders want to know why the change matters.
- You need a bridge from analysis to business value.

## Expected inputs
- problem statement
- as-is findings
- to-be proposal
- stakeholder goals
- baseline pain points

## Deliverables
- benefit hypotheses
- success measures
- dependency assumptions
- evidence gaps

## Operating procedure
1. List the proposed change and the baseline problem it addresses.
2. Write hypotheses in the form: if we change X for Y context, we expect Z outcome because A.
3. Define leading and lagging measures where possible.
4. Capture assumptions, dependencies, and evidence gaps.
5. Differentiate direct benefits, indirect benefits, and uncertain upside.

## Quality gates
- Hypotheses are measurable where possible.
- Causal logic is explicit.
- Assumptions and evidence gaps are visible.

## Handoff targets
- stakeholder-communication-planner
- project-charter-writer if present
- requirements-prioritizer if present

## Output style
- Be explicit about uncertainty.
- Prefer structured outputs over loose prose.
- Separate confirmed findings, inferred findings, and open questions.
- Preserve source context where practical.

## Failure modes to avoid
- Do not pretend weak evidence is confirmed fact.
- Do not confuse stakeholder opinion with validated rule or process truth.
- Do not hide missing coverage behind polished wording.
- Do not flatten politically different stakeholders into one generic audience.

## Minimum output skeleton
```md
## Summary
## Findings
## Structured outputs
## Risks or tensions
## Open questions
## Recommended next skill
```
