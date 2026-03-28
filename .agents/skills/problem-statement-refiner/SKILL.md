---
name: "problem-statement-refiner"
pack: "requirements-discovery-pack"
purpose: "Turn a vague idea, pain point, or project brief into a crisp problem statement with objective, scope, stakeholders, constraints, and success criteria."
inputs: ["raw brief", "business context", "user/stakeholder context", "known constraints", "known goals"]
outputs: ["refined problem statement", "goal statement", "scope draft", "explicit assumptions", "open questions", "success criteria"]
handoffs: ["requirements-interrogator", "functional-vs-nonfunctional-splitter", "assumption-extractor"]
---
# problem-statement-refiner

## Purpose
Turn a vague idea, pain point, or project brief into a crisp problem statement with objective, scope, stakeholders, constraints, and success criteria.

## Trigger this skill when
- The request is broad, solution-first, or unclear about the actual problem.
- A repo or project starts with a one-paragraph brief, issue, or verbal idea.
- You need a sharper statement before requirements, design, or estimation.

## Expected inputs
- raw brief
- business context
- user/stakeholder context
- known constraints
- known goals

## Deliverables
- refined problem statement
- goal statement
- scope draft
- explicit assumptions
- open questions
- success criteria

## Operating procedure
1. Extract the current pain, desired outcome, affected users, and business context.
2. Separate symptoms from root problem.
3. Rewrite the problem in one sentence using actor + need + obstacle + impact.
4. List scope boundaries, constraints, assumptions, and unknowns.
5. Define measurable success criteria where possible.
6. Surface the top unresolved questions that block good requirements.

## Quality gates
- Distinguishes problem from proposed solution.
- Names the affected actor(s) and operational/business impact.
- Contains scope and non-scope.
- Includes unresolved questions instead of guessing.

## Handoff targets
- requirements-interrogator
- functional-vs-nonfunctional-splitter
- assumption-extractor

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
