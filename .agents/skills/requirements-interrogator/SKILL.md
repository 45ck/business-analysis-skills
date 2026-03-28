---
name: "requirements-interrogator"
pack: "requirements-discovery-pack"
purpose: "Run a disciplined clarification pass that pressure-tests requirements, surfaces hidden constraints, and exposes ambiguity early."
inputs: ["problem statement", "existing requirements", "stakeholders", "project constraints"]
outputs: ["clarification question set", "requirements issues list", "assumptions register", "updated requirement notes"]
handoffs: ["ambiguity-hunter", "constraint-detector", "acceptance-criteria-writer"]
---
# requirements-interrogator

## Purpose
Run a disciplined clarification pass that pressure-tests requirements, surfaces hidden constraints, and exposes ambiguity early.

## Trigger this skill when
- The user has given requirements but they are incomplete, optimistic, or inconsistent.
- You are about to design, estimate, or implement from natural-language requirements.
- A change request may affect security, compliance, UX, or operations.

## Expected inputs
- problem statement
- existing requirements
- stakeholders
- project constraints

## Deliverables
- clarification question set
- requirements issues list
- assumptions register
- updated requirement notes

## Operating procedure
1. Read the current requirement set end to end.
2. Probe for actor, trigger, precondition, main flow, exception flow, data, policy, security, timing, and operational concerns.
3. Classify ambiguities into missing information, conflict, hidden assumption, scope uncertainty, and unverifiable statement.
4. Prioritize the highest-risk unanswered questions first.
5. Rewrite shaky requirements into testable language where enough context exists.

## Quality gates
- Questions are risk-based, not random.
- Distinguishes missing requirement from implementation decision.
- Marks unverifiable language such as fast, user-friendly, secure, intuitive, scalable.

## Handoff targets
- ambiguity-hunter
- constraint-detector
- acceptance-criteria-writer

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
