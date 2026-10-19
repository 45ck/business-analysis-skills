---
name: definition-of-done-drafter
description: Draft a requirement-aware Definition of Done (DoD) covering analysis, design, implementation, testing, documentation, security and privacy, and operational and release readiness, split into universal gates and feature-specific additions, each with the evidence that proves it. Use this skill whenever the user mentions definition of done, DoD, "when is a story done", completion standard, done checklist, release readiness, or quality gates for a team, when features close without consistent evidence, when a team starts agile or iterative delivery, or when acceptance criteria exist but there is no shared standard for finishing work — even if they never say "definition of done". Part of the requirements-discovery pack; hands off to requirements-traceability-starter and to delivery, project, or testing skills if installed.
---

# definition-of-done-drafter

Produce a Definition of Done that the team can actually check: each item is a gate with evidence, fitted to the project's risks and domain, not a generic list everyone ignores.

**Language:** reply in the language the user writes in.

## When to use

- The team needs a shared completion standard.
- Features or stories close without consistent evidence (tests, docs, reviews).
- Agile or iterative delivery is starting or being tightened.
- Constraints such as security review or accessibility must become part of "done".

Do not use for: acceptance criteria of a single story (acceptance-criteria-writer: AC say what the feature must do; DoD says what every piece of work must have before it counts as finished), or release planning in general.

## Inputs

Requirements, acceptance criteria, constraints (from constraint-detector), quality expectations, team process notes, existing DoD if any, compliance obligations. If the team's process (e.g. who reviews, which environments exist) is unknown, write the gate with a placeholder and ask.

## Gate areas (consider each; keep only relevant ones)

| Area | Typical gates |
|---|---|
| Analysis | linked to requirement and owner; AC defined and reviewed; open questions closed or accepted |
| Design | design impact checked; architecture or UX review where required |
| Implementation | code reviewed; standards met; feature flags or config documented |
| Testing | tests for each AC pass; negative and edge cases covered; regression run |
| Non-functional | performance, accessibility, security checks where relevant |
| Security / privacy | permissions checked; personal data handling reviewed |
| Documentation | user, support, or API docs updated where relevant |
| Operations / release | monitoring and alerts; deployment and rollback steps known; support informed |
| Acceptance | product owner accepted against AC |

## Procedure

1. **Extract mandatory completion conditions** from requirements, constraints, and compliance obligations (these are non-negotiable gates; cite the source).
2. **Add minimum gates** per area above, only where relevant to the project's risk and domain.
3. **Split universal vs feature-specific**: universal gates apply to every item; feature-specific additions apply to a named type of work (e.g. anything touching payments, anything with personal data).
4. **Define evidence** for every gate: what artifact or record proves it (test report, review link, checklist tick by a named role).
5. **Check feasibility**: flag gates the team cannot meet with current tools or capacity, instead of silently keeping them.
6. **Run the quality gates**, then produce the output.

## Writing rules

- Each DoD item is a checkable gate with evidence, not an aspiration ("quality code").
- Mark the origin of each gate: Mandatory (constraint, regulation, policy) or Team practice.
- Do not invent process steps the team does not have; propose them as recommendations, clearly marked.
- Keep it short enough to use: universal list ideally 5-10 items.
- IDs: DOD-001, ...; link to requirement, AC, and CON IDs where relevant.

## Quality gates

- Every DoD item has evidence defined.
- The DoD reflects project risk and domain, not generic fluff.
- Mandatory gates are traced to their source constraint or policy.
- Universal and feature-specific gates are separated.
- Gates the team cannot currently meet are flagged.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Scope (team, product), number of universal and specific gates, key mandatory gates.

## Findings
Gaps in current practice, gates that are infeasible today, conflicts with constraints.

## Structured outputs
### Definition of Done — universal gates
| ID | Gate | Area | Origin (Mandatory/Team) | Evidence | Who confirms |
|---|---|---|---|---|---|
### Feature-specific additions
| Applies to | ID | Gate | Evidence |
|---|---|---|---|
### Evidence checklist
- Requirement IDs / AC IDs / test evidence / review evidence (per item)
### Release readiness notes
Deployment, rollback, monitoring, support, and communication gates for release.

## Assumptions
## Constraints
Constraints that created mandatory gates (CON IDs).

## Open questions

## Recommended next skill
requirements-traceability-starter to link DoD evidence to requirements and AC; delivery, project, or testing skills if installed.
```

## Example

Context: team building a patient booking app; GDPR applies; WCAG 2.1 AA required by contract.

- **DOD-001** (Analysis, Team): story linked to requirement ID and has reviewed AC. Evidence: links in ticket.
- **DOD-002** (Testing, Team): automated tests for every AC pass in CI. Evidence: CI run link.
- **DOD-003** (Non-functional, Mandatory, CON-004 contract): screens pass WCAG 2.1 AA checks. Evidence: accessibility check report.
- Feature-specific (personal data): **DOD-010** data protection review completed. Evidence: DPO sign-off. Open question: does the team have a DPO contact with capacity per sprint?

## Handoffs

- **requirements-traceability-starter**: to connect DoD evidence to requirements and AC IDs.
- **acceptance-criteria-writer**: if items lack AC, which DoD depends on.
- Delivery, project, or testing skills (if installed): to embed the DoD in workflow and test planning.

## Failure modes to avoid

- Generic DoD lists copied without regard to project risk.
- Gates without evidence, which nobody can check.
- Treating team preferences as mandatory gates, or dropping mandatory ones.
- Mixing DoD with acceptance criteria of individual stories.
- Keeping gates the team cannot meet, hiding the gap.
