---
name: "acceptance-criteria-writer"
pack: "requirements-discovery-pack"
purpose: "Convert requirements or stories into observable, testable acceptance criteria."
inputs: ["requirements", "story or feature description", "constraints", "business rules"]
outputs: ["acceptance criteria", "negative criteria", "ready-for-test checklist"]
handoffs: ["edge-case-elicitor", "requirements-traceability-starter", "test-design packs later"]
---
# acceptance-criteria-writer

## Purpose
Convert requirements or stories into observable, testable acceptance criteria.

## Trigger this skill when
- Requirements are too high-level to test.
- Stories exist but there is no clear done condition.
- You need criteria before implementation or QA work.

## Expected inputs
- requirements
- story or feature description
- constraints
- business rules

## Deliverables
- acceptance criteria
- negative criteria
- ready-for-test checklist

## Operating procedure
1. Rewrite each feature into actor + trigger + expected outcome.
2. Add failure, validation, permission, state, and edge-case behavior.
3. Use Given/When/Then or equivalent observable format.
4. Mark any criteria blocked by unresolved ambiguity.

## Quality gates
- Criteria are observable and verifiable.
- Criteria cover success and important failure modes.
- No hidden implementation detail unless intentionally required.

## Handoff targets
- edge-case-elicitor
- requirements-traceability-starter
- test-design packs later

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
