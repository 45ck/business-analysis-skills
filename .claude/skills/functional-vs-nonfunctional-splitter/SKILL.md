---
name: "functional-vs-nonfunctional-splitter"
pack: "requirements-discovery-pack"
purpose: "Separate behaviors the system must perform from quality attributes, constraints, and operational rules."
inputs: ["requirements text", "scope notes", "stakeholder needs"]
outputs: ["functional requirements list", "non-functional requirements list", "misclassified statements list"]
handoffs: ["acceptance-criteria-writer", "requirements-prioritizer", "requirements-traceability-starter"]
---
# functional-vs-nonfunctional-splitter

## Purpose
Separate behaviors the system must perform from quality attributes, constraints, and operational rules.

## Trigger this skill when
- Requirements are mixed together in prose.
- A brief uses vague statements like reliable, scalable, simple, secure, fast.
- You need a cleaner input for design, estimation, or test planning.

## Expected inputs
- requirements text
- scope notes
- stakeholder needs

## Deliverables
- functional requirements list
- non-functional requirements list
- misclassified statements list

## Operating procedure
1. Extract each requirement statement independently.
2. Classify it as functional, non-functional, business rule, external constraint, assumption, or design choice.
3. Rewrite blended statements into multiple atomic requirements where necessary.
4. Group non-functional items by category such as performance, security, usability, reliability, maintainability, compliance, and supportability.

## Quality gates
- Each requirement is atomic.
- Quality constraints are not mislabeled as features.
- Design choices are not silently treated as requirements.

## Handoff targets
- acceptance-criteria-writer
- requirements-prioritizer
- requirements-traceability-starter

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
