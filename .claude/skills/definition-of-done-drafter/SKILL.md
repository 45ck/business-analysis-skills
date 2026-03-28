---
name: "definition-of-done-drafter"
pack: "requirements-discovery-pack"
purpose: "Draft a requirement-aware definition of done covering analysis, design, implementation, testing, documentation, and operational readiness."
inputs: ["requirements", "acceptance criteria", "constraints", "quality expectations", "team process notes"]
outputs: ["definition of done", "evidence checklist", "release readiness notes"]
handoffs: ["requirements-traceability-starter", "agile/project/testing packs later"]
---
# definition-of-done-drafter

## Purpose
Draft a requirement-aware definition of done covering analysis, design, implementation, testing, documentation, and operational readiness.

## Trigger this skill when
- The team needs a shared completion standard.
- Features are closing without consistent evidence.
- Agile or iterative delivery is in use.

## Expected inputs
- requirements
- acceptance criteria
- constraints
- quality expectations
- team process notes

## Deliverables
- definition of done
- evidence checklist
- release readiness notes

## Operating procedure
1. Extract mandatory completion conditions from the requirement set.
2. Add minimum gates for design impact checked, tests passed, docs updated, security/privacy checks, and deployment/rollback readiness where relevant.
3. Split universal DoD items from feature-specific additions.

## Quality gates
- Done criteria are evidence-based.
- The DoD reflects project risk and domain, not generic fluff.
- Feature-specific obligations remain visible.

## Handoff targets
- requirements-traceability-starter
- agile/project/testing packs later

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
