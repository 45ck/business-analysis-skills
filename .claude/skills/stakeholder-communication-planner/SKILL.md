---
name: "stakeholder-communication-planner"
pack: "business-analysis-pack"
purpose: "Define what each stakeholder group needs to know, when they need it, and how they should be engaged through the analysis lifecycle."
inputs: ["stakeholder map", "power-interest matrix", "project timeline", "decision points"]
outputs: ["communication plan", "cadence recommendations", "owner suggestions", "engagement risks"]
handoffs: ["workshop-agenda-builder", "interview-plan-designer", "project-charter-writer if present"]
---
# stakeholder-communication-planner

## Purpose
Define what each stakeholder group needs to know, when they need it, and how they should be engaged through the analysis lifecycle.

## Trigger this skill when
- Stakeholder engagement is likely to drift or become ad hoc.
- You need a deliberate communication approach before workshops or discovery sessions.
- There are multiple audiences with different information needs.

## Expected inputs
- stakeholder map
- power-interest matrix
- project timeline
- decision points

## Deliverables
- communication plan
- cadence recommendations
- owner suggestions
- engagement risks

## Operating procedure
1. Segment stakeholders by information need, timing, influence, and required level of involvement.
2. Map each segment to a cadence, channel, format, and owner.
3. Separate decision communication from status communication.
4. Identify moments that require consultation, sign-off, or escalation.
5. Call out overload risk, silence risk, and bypass risk.

## Quality gates
- Plan is stakeholder-specific instead of one broadcast cadence for everyone.
- Decision points and sign-off moments are explicit.
- Communication risks are visible.

## Handoff targets
- workshop-agenda-builder
- interview-plan-designer
- project-charter-writer if present

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
