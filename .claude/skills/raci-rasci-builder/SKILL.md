---
name: "raci-rasci-builder"
pack: "business-analysis-pack"
purpose: "Clarify ownership, support, consultation, and accountability across analysis and delivery activities."
inputs: ["stakeholder list", "work activities", "decision points", "org context"]
outputs: ["RACI or RASCI matrix", "role ambiguities", "ownership gaps", "decision bottlenecks"]
handoffs: ["stakeholder-communication-planner", "workshop-agenda-builder", "project-planning packs later"]
---
# raci-rasci-builder

## Purpose
Clarify ownership, support, consultation, and accountability across analysis and delivery activities.

## Trigger this skill when
- Roles are blurred or multiple people assume someone else owns the work.
- Approvals and responsibilities are slowing progress.
- You need a clear participation model for analysis and design tasks.

## Expected inputs
- stakeholder list
- work activities
- decision points
- org context

## Deliverables
- RACI or RASCI matrix
- role ambiguities
- ownership gaps
- decision bottlenecks

## Operating procedure
1. List key activities, decisions, and artifact responsibilities.
2. Assign Responsible, Accountable, Consulted, Informed, and optionally Support roles.
3. Detect cells with too many accountables, no responsible owner, or excessive consultation overhead.
4. Highlight role conflicts and escalation needs.
5. Output the matrix with interpretation notes.

## Quality gates
- Every critical activity has a responsible owner.
- Accountability is singular where appropriate.
- The matrix exposes bottlenecks instead of hiding them.

## Handoff targets
- stakeholder-communication-planner
- workshop-agenda-builder
- project-planning packs later

## Output style
- Be explicit about uncertainty.
- Prefer structured outputs over loose prose.
- Separate confirmed findings, inferred findings, and open questions.
- Preserve source context where practical.

## Failure modes to avoid
- Do not pretend weak evidence is confirmed fact.
- Do not confuse stakeholder opinion with validated rule or process truth.
- Do not hide missing coverage behind polished wording.
- Do not flatten politically different stakeholders into one generic audience.

## Minimum output skeleton
```md
## Summary
## Findings
## Structured outputs
## Risks or tensions
## Open questions
## Recommended next skill
```
