---
name: "assumption-extractor"
pack: "requirements-discovery-pack"
purpose: "Identify what the request is quietly assuming about users, systems, processes, policies, data, budgets, and timelines."
inputs: ["brief", "requirements", "architecture notes", "project plan"]
outputs: ["assumptions register", "validation suggestions", "high-risk assumptions shortlist"]
handoffs: ["constraint-detector", "requirements-gap-auditor", "project-risk-register if present"]
---
# assumption-extractor

## Purpose
Identify what the request is quietly assuming about users, systems, processes, policies, data, budgets, and timelines.

## Trigger this skill when
- A spec looks confident but thin.
- A project plan or design depends on unstated environmental facts.
- You suspect the team is relying on defaults that may be false.

## Expected inputs
- brief
- requirements
- architecture notes
- project plan

## Deliverables
- assumptions register
- validation suggestions
- high-risk assumptions shortlist

## Operating procedure
1. Scan for implied facts about actors, environments, dependencies, data shape, permissions, volumes, and delivery constraints.
2. Convert each implied fact into an explicit assumption sentence.
3. Rate each assumption by impact and likelihood of being wrong.
4. Suggest how to validate or retire each high-risk assumption.

## Quality gates
- Assumptions are stated explicitly and testably.
- High-risk assumptions are clearly separated from benign defaults.
- No assumption is presented as a fact without evidence.

## Handoff targets
- constraint-detector
- requirements-gap-auditor
- project-risk-register if present

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
