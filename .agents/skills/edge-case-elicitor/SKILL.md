---
name: "edge-case-elicitor"
pack: "requirements-discovery-pack"
purpose: "Generate realistic boundary, invalid, exceptional, and rarely discussed cases from normal requirements."
inputs: ["requirements", "acceptance criteria", "data rules", "workflow states"]
outputs: ["edge-case catalogue", "negative scenarios", "follow-up questions"]
handoffs: ["acceptance-criteria-writer", "verification/test packs later", "ambiguity-hunter"]
---
# edge-case-elicitor

## Purpose
Generate realistic boundary, invalid, exceptional, and rarely discussed cases from normal requirements.

## Trigger this skill when
- A feature looks simple and therefore risky to under-specify.
- Validation, permissions, workflow branching, or time/state logic exists.
- Acceptance criteria are too happy-path heavy.

## Expected inputs
- requirements
- acceptance criteria
- data rules
- workflow states

## Deliverables
- edge-case catalogue
- negative scenarios
- follow-up questions

## Operating procedure
1. Inspect actor, data, timing, ordering, concurrency, state, limits, and environment assumptions.
2. Generate invalid, missing, duplicated, stale, partial, unauthorized, boundary, and sequencing scenarios.
3. Mark which cases need requirement clarification vs direct acceptance criteria.

## Quality gates
- Cases are plausible, not random.
- Edge cases map back to a real workflow or data rule.
- Critical failure modes are represented.

## Handoff targets
- acceptance-criteria-writer
- verification/test packs later
- ambiguity-hunter

## Output style
- Be explicit about uncertainty.
- Prefer short, testable statements over long prose.
- Surface risk and ambiguity instead of guessing.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not invent stakeholder intent.
- Do not convert preferences into mandatory requirements without evidence.
- Do not hide unresolved ambiguity behind polished wording.
- Do not collapse functional, non-functional, and business rule concerns into one blob.

## Minimum output skeleton
```md
## Summary
## Findings
## Structured outputs
## Assumptions
## Constraints
## Open questions
## Recommended next skill
```
