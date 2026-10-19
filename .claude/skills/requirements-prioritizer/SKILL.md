---
name: requirements-prioritizer
description: Prioritise requirements, features, or backlog items using explicit criteria — business value, risk reduction, dependency centrality, urgency, compliance or security obligation, and effort sensitivity — map them to MoSCoW (Must, Should, Could, Won't) or an equivalent scheme, respect dependencies, flag low-value high-cost items, and propose a release cut line with rationale. Use this skill whenever there are too many requirements for one release, a backlog or scope cut is needed, the user asks "what should we build first", "what can we drop", "what is MVP", needs a release plan or phasing, or trade-off decisions need a disciplined, defensible basis — even if they never say "prioritise". Part of the requirements-discovery pack; uses the moscow-prioritisation technique when only MoSCoW is needed; hands off to definition-of-done-drafter, requirements-traceability-starter, and project-planning skills if installed.
---

# requirements-prioritizer

Rank requirements on stated criteria so that priority is a reasoned, visible decision rather than whoever spoke loudest, and propose where to cut scope for a release.

**Language:** reply in the language the user writes in.

## When to use

- There are too many requirements for one release or budget.
- A backlog needs ordering or a scope cut.
- MVP or phasing must be defined.
- Trade-offs need a defensible basis for stakeholders.

Do not use for: a quick MoSCoW workshop technique on its own (moscow-prioritisation), resolving contradictions (requirements-conflict-checker), or SWOT-based strategic prioritisation (swot-prioritisation). This skill combines several criteria and dependencies into a ranked list with a cut line.

## Inputs

Requirements (ideally with IDs), business goals, constraints, dependencies, risks, effort estimates if any, fixed dates. If goals or effort are unknown, say which criteria cannot be scored and score them as `?` rather than guessing.

## Scoring criteria (default; adapt if the user gives their own)

| Criterion | Question | Scale |
|---|---|---|
| Value | how much does it contribute to the stated goals? | 1-5 |
| Risk reduction | does it reduce technical, business, or delivery risk? | 1-5 |
| Dependency centrality | how many other items depend on it? | 1-5 |
| Urgency | is there a date, event, or decay of value? | 1-5 |
| Obligation | legal, compliance, security, or contractual must? | Yes / No |
| Effort sensitivity | how large or uncertain is the effort? | S / M / L / ? |

Obligation = Yes forces Must unless an authority explicitly decides otherwise.

## Procedure

1. **Confirm the basis**: goals, release boundary (date, budget, capacity), and the scheme (MoSCoW by default). State any criteria weights; default is equal weight for value, risk reduction, dependency, urgency.
2. **Score** each requirement on the criteria with a one-line rationale. Mark unknown scores `?`.
3. **Map to categories**: Must (release fails without it, or obligation), Should (important, workaround exists), Could (desirable, low impact if missing), Won't (this release) — with rationale per item.
4. **Check dependencies**: no Must depends on a Could or Won't; if it does, raise the dependency or flag the conflict.
5. **Highlight outliers**: low value with high or uncertain effort, high risk with low value, items with many dependants.
6. **Propose a cut line**: what fits the release boundary, the rationale, and what would move if capacity changes. Check that Musts alone fit; if not, say so plainly.
7. **Run the quality gates**, then produce the output.

## Writing rules

- Priority rationale is explicit for every item.
- Compliance and security obligations are never demoted silently.
- Do not invent effort or value; unknown is `?` with a question.
- Stakeholder priorities are attributed when they differ; do not average them away.
- Keep IDs from the input; add PRI- notes only if needed.

## Quality gates

- Every item has scores (or `?`), a category, and rationale.
- Dependencies are respected and violations flagged.
- Obligations are not accidentally demoted.
- Outliers are highlighted.
- The cut line is justified, and it is stated whether Musts fit the boundary.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Items ranked, counts per category, whether Musts fit the release, the proposed cut line.

## Findings
Outliers, dependency issues, missing scoring inputs, stakeholder disagreements.

## Structured outputs
### Priority-ranked requirements
| Rank | ID | Requirement | Value | Risk red. | Dependency | Urgency | Obligation | Effort | Category | Rationale |
|---|---|---|---|---|---|---|---|---|---|---|
### MoSCoW classification
- Must: ...
- Should: ...
- Could: ...
- Won't (this release): ...
### Cut-line suggestions
Release boundary, what is in, what moves first if capacity drops or grows.

## Assumptions
Weights, capacity, estimates used.

## Constraints
## Open questions

## Recommended next skill
definition-of-done-drafter for the release; requirements-traceability-starter to link priorities to goals and tests; project-planning skills if installed.
```

## Example

Release boundary: 8 weeks, one team.

- FR-001 online booking — Value 5, Dependency 5 (payments and reminders depend on it) -> Must.
- NFR-004 WCAG AA — Obligation Yes (contract CON-003) -> Must.
- FR-009 loyalty points — Value 2, Effort L -> Could; outlier: low value, high effort.
- FR-006 SMS reminders — Value 4, depends on FR-001 -> Should.
- Cut line: Musts ≈ 6 weeks (estimate from team), FR-006 fits; FR-009 Won't this release.

## Handoffs

- **definition-of-done-drafter**: to set completion gates for the release scope.
- **requirements-traceability-starter**: to connect priorities to goals and tests.
- **moscow-prioritisation**: if a facilitated MoSCoW session with stakeholders is needed.
- Project-planning skills (if installed): to schedule the release.

## Failure modes to avoid

- Priorities without rationale.
- Demoting compliance or security obligations.
- Ignoring dependencies, so a Must cannot be delivered.
- Averaging away stakeholder disagreement.
- Inventing effort or value scores.
- A cut line that does not fit the stated capacity.
