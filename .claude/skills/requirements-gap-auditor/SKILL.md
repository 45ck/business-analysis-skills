---
name: "requirements-gap-auditor"
pack: "requirements-discovery-pack"
purpose: "Audit a requirement set for what is missing relative to common engineering needs: actors, flows, data, validation, security, operations, and lifecycle."
inputs: ["requirements", "problem statement", "constraints", "assumptions", "acceptance criteria if any"]
outputs: ["gap audit report", "missing topic checklist", "remediation suggestions"]
handoffs: ["requirements-interrogator", "constraint-detector", "definition-of-done-drafter"]
---
# requirements-gap-auditor

## Purpose
Audit a requirement set for what is missing relative to common engineering needs: actors, flows, data, validation, security, operations, and lifecycle.

## Trigger this skill when
- A draft spec feels thin but the exact gaps are unclear.
- Before sign-off, estimation, architecture, or build.
- After a large edit or merge of multiple requirement sources.

## Expected inputs
- requirements
- problem statement
- constraints
- assumptions
- acceptance criteria if any

## Deliverables
- gap audit report
- missing topic checklist
- remediation suggestions

## Operating procedure
1. Check for normal completeness categories: actors, triggers, preconditions, postconditions, data, validation, permissions, error handling, NFRs, support/ops, reporting, auditability, rollout, and maintenance.
2. Flag absent or weak areas.
3. Suggest the next best artifact or question to close each major gap.

## Quality gates
- Gaps are categorized and evidence-based.
- Findings distinguish absent, weak, and deferred.
- Suggestions are actionable.

## Handoff targets
- requirements-interrogator
- constraint-detector
- definition-of-done-drafter

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
