---
name: requirements-gap-auditor
description: Audit a requirements set, spec, or user story collection for what is missing — actors, triggers, preconditions, postconditions, main and exception flows, data, validation, permissions, error handling, non-functional requirements, support and operations, reporting, auditability, migration, rollout, and maintenance — classifying each area as covered, weak, absent, or deferred, and recommending the next question or artifact to close each gap. Use this skill whenever a draft spec feels thin but the exact gaps are unclear, before sign-off, estimation, architecture, vendor selection, or build, after merging several requirement sources, or when the user asks "what's missing", "is this complete", "did we forget anything", or wants a completeness check — even if they never say "gap". Part of the requirements-discovery pack; hands off to requirements-interrogator, constraint-detector, and definition-of-done-drafter.
---

# requirements-gap-auditor

Check a requirements set against the topics a buildable, operable system normally needs, and show clearly what is missing, what is too weak to use, and what was consciously deferred, with a concrete next step for each important gap.

**Language:** reply in the language the user writes in.

## When to use

- A draft spec feels thin but nobody can say exactly what is missing.
- Before sign-off, estimation, architecture, procurement, or build.
- After a large edit or a merge of several requirement sources.

Do not use for: unclear wording of existing statements (ambiguity-hunter), contradictions (requirements-conflict-checker), edge cases of one feature (edge-case-elicitor), or a full quality review of requirement statements (requirements-quality-check). This skill looks for absence.

## Completeness categories

| Area | Check for |
|---|---|
| Actors and roles | all user types, admins, external systems, support staff |
| Triggers and preconditions | what starts each flow, required state |
| Main and exception flows | happy path, alternatives, failures, cancellation |
| Postconditions and outcomes | resulting state, notifications, records |
| Data | entities, fields, sources, ownership, retention, migration |
| Validation | input rules, formats, limits |
| Permissions and security | who can do what, authentication, data access |
| Error handling | messages, retries, recovery |
| Non-functional | performance, availability, usability, accessibility, compliance |
| Integrations | interfaces, failure behaviour, data exchange |
| Reporting and audit | reports, logs, audit trail, analytics |
| Support and operations | monitoring, support processes, admin functions |
| Rollout and transition | migration, training, cutover, rollback |
| Maintenance and lifecycle | configuration, archiving, decommissioning |

Adjust the list to the context (e.g. drop UI topics for a batch interface) and say what you dropped.

## Procedure

1. **Understand scope** from the problem statement and requirements: what kind of system, which flows, which actors. Gaps are judged against this scope, not a generic ideal.
2. **Check each category** and classify it:
   - **Covered**: addressed adequately.
   - **Weak**: mentioned but too vague or partial to design or test.
   - **Absent**: not addressed at all although relevant.
   - **Deferred**: explicitly out of scope or postponed (cite where).
3. **Give evidence** for each Weak or Absent finding: what is present, what is missing, and why it matters for this system.
4. **Rate impact**: High (blocks design, estimation, compliance), Medium, Low.
5. **Recommend remediation** for each High and Medium gap: the specific question to ask, the stakeholder to ask, or the artifact or skill that closes it.
6. **Run the quality gates**, then produce the output.

## Writing rules

- Gaps are evidence-based: refer to what the document does and does not say.
- Distinguish absent, weak, and deferred; never call a deliberate deferral a gap.
- Do not write the missing requirements yourself as if agreed; propose questions or draft candidates marked as such.
- IDs: GAP-001, ...

## Quality gates

- Every relevant category has a status.
- Findings distinguish absent, weak, and deferred, with evidence.
- Impact is rated, and every High or Medium gap has an actionable remediation.
- Scope-based adjustments to the checklist are stated.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Scope audited, counts (covered / weak / absent / deferred), top gaps blocking the next step.

## Findings
### Gap audit report
| ID | Area | Status | Evidence | Impact | Remediation |
|---|---|---|---|---|---|

## Structured outputs
### Missing topic checklist
- [x] Area — covered
- [ ] Area — absent / weak
### Remediation suggestions
- GAP-00n: question to ask / who / skill to use

## Assumptions
How you interpreted scope.

## Constraints
## Open questions

## Recommended next skill
requirements-interrogator to close gaps with stakeholders; constraint-detector if constraints are missing; definition-of-done-drafter if quality and operational gates are missing; edge-case-elicitor for weak exception flows.
```

## Example

Spec: online leave request system, 12 requirements, all about submitting and approving.

- **GAP-001** (Exception flows, Absent, High): no behaviour for rejected, cancelled, or edited requests. Remediation: ask HR lead; then edge-case-elicitor.
- **GAP-002** (Data, Weak, High): "leave balance shown" but no source of balances or update rule. Remediation: ask payroll which system owns balances.
- **GAP-003** (Reporting, Absent, Medium): no reports for HR although the brief mentions "HR oversight".
- **GAP-004** (Rollout, Deferred): migration of historic leave records excluded in scope §2 — not a gap.

## Handoffs

- **requirements-interrogator**: to ask the stakeholder questions that close gaps.
- **constraint-detector**: when constraints are missing or unclear.
- **definition-of-done-drafter**: when quality, security, or operational gates are missing.
- **edge-case-elicitor**: when exception flows are weak.

## Failure modes to avoid

- Applying a generic checklist without regard to scope.
- Calling deliberate deferrals gaps.
- Listing gaps without saying why they matter.
- Writing missing requirements as if they were agreed.
- Hiding missing coverage behind polished wording.
