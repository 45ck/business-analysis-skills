---
name: "requirements-conflict-checker"
pack: "requirements-discovery-pack"
purpose: "Detect contradictions, tension, or incompatible expectations across requirements, business rules, policies, and constraints."
inputs: ["requirements set", "business rules", "constraints", "assumptions"]
outputs: ["conflict matrix", "severity-ranked issues", "resolution options"]
handoffs: ["requirements-prioritizer", "decision-log if present", "problem-statement-refiner"]
---
# requirements-conflict-checker

## Purpose
Detect contradictions, tension, or incompatible expectations across requirements, business rules, policies, and constraints.

## Trigger this skill when
- Requirements were gathered from multiple people or stages.
- NFRs may compete with each other or with schedule/cost limits.
- A change request could invalidate earlier decisions.

## Expected inputs
- requirements set
- business rules
- constraints
- assumptions

## Deliverables
- conflict matrix
- severity-ranked issues
- resolution options

## Operating procedure
1. Compare requirements pairwise where overlap exists.
2. Look for logical contradiction, duplicated intent with different wording, NFR tradeoff tension, and scope mismatch.
3. Describe the impact of each conflict and the likely owner who must resolve it.
4. Suggest resolution paths rather than silently choosing one.

## Quality gates
- Conflicts are concrete and source-linked.
- Tradeoffs are explicit.
- No silent assumption is used to 'resolve' a contradiction.

## Handoff targets
- requirements-prioritizer
- decision-log if present
- problem-statement-refiner

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
