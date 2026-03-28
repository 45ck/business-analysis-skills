---
name: "constraint-detector"
pack: "requirements-discovery-pack"
purpose: "Identify hard boundaries that shape the solution space: technical, legal, organizational, financial, time, platform, and integration constraints."
inputs: ["requirements", "project brief", "platform notes", "org policies", "integration context"]
outputs: ["constraint register", "hard vs soft constraints split", "design impact notes"]
handoffs: ["requirements-prioritizer", "architecture-option-review if present", "definition-of-done-drafter"]
---
# constraint-detector

## Purpose
Identify hard boundaries that shape the solution space: technical, legal, organizational, financial, time, platform, and integration constraints.

## Trigger this skill when
- A team is picking solutions before checking boundaries.
- The brief references mandated tools, vendors, deadlines, standards, or environments.
- Feasibility or architecture work is starting.

## Expected inputs
- requirements
- project brief
- platform notes
- org policies
- integration context

## Deliverables
- constraint register
- hard vs soft constraints split
- design impact notes

## Operating procedure
1. Extract all explicit restrictions.
2. Infer likely constraints from platform, regulation, team capability, procurement, environment, and integration context.
3. Separate hard constraints from preferences and assumptions.
4. Note which design options each hard constraint removes or weakens.

## Quality gates
- Preferences are not mislabeled as hard constraints.
- Each constraint names its source where possible.
- Design implications are captured.

## Handoff targets
- requirements-prioritizer
- architecture-option-review if present
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
