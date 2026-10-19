---
name: requirements-conflict-checker
description: Detect contradictions, tensions, duplicates with different wording, scope mismatches, and incompatible expectations across requirements, business rules, policies, constraints, and assumptions, rank them by severity, name who must resolve each, and propose resolution options without silently choosing one. Use this skill whenever requirements were gathered from several people, teams, documents, or stages, when non-functional requirements may compete with each other (security vs usability, performance vs cost) or with schedule and budget, when a change request might invalidate earlier decisions, or when the user asks "do these contradict", "is this consistent", "what conflicts", or prepares a spec for sign-off — even if they never say "conflict". Part of the requirements-discovery pack; hands off to requirements-prioritizer, problem-statement-refiner, and a decision log if present.
---

# requirements-conflict-checker

Find the places where requirements, rules, and constraints cannot all be true or all be satisfied at once, make the trade-off visible, and route each conflict to the person who can decide.

**Language:** reply in the language the user writes in. Quote conflicting statements verbatim in their original language.

## When to use

- Requirements come from several people, teams, documents, or stages.
- NFRs may compete with each other or with schedule and cost limits.
- A change request could invalidate earlier decisions or requirements.
- A spec is heading to sign-off and consistency must be checked.

Do not use for: vague wording within one statement (ambiguity-hunter), missing requirements (requirements-gap-auditor), or consistency across a whole set of BA deliverables (deliverable-consistency-check). This skill compares statements against each other.

## Conflict types

| Type | Meaning | Example |
|---|---|---|
| Logical contradiction | both cannot be true | "Guests can check out" vs "Login required to purchase" |
| Rule / exception clash | overlapping conditions, different outcomes, no precedence | discount rules that both apply |
| Duplicate with drift | same intent, different details | timeout 15 min in one place, 30 min in another |
| NFR trade-off | qualities pulling apart | MFA on every action vs one-click checkout |
| Constraint clash | requirement cannot be met within a constraint | full feature set vs fixed deadline and budget |
| Scope mismatch | requirement outside agreed scope, or scope item with no requirement | |
| Stakeholder conflict | different groups want incompatible things | |
| Change impact | new request breaks an earlier decision | |

## Procedure

1. **Index** the set: give every statement an ID if it lacks one, and group by feature, entity, or actor so overlaps are visible.
2. **Compare** statements pairwise where they overlap (same feature, data, actor, quality, or rule). Do not compare everything with everything in large sets; compare within overlap groups and against constraints.
3. **Identify conflicts** using the types above. For each: the statements involved with quotes and sources, why they conflict, and whether it is a hard conflict (cannot both hold) or a tension (both possible at a cost).
4. **Assess impact and severity**: High (blocks design, compliance, or sign-off), Medium (rework or cost), Low (cosmetic or easily aligned).
5. **Name the likely owner** who must resolve it (product owner, compliance, architecture, sponsor) — suggested, not invented as fact.
6. **Propose resolution options** (usually 2-3): keep A, keep B, combine, sequence, add a precedence rule, escalate. State the trade-off of each. Do not pick silently; you may say which looks most consistent with stated goals and why.
7. **Run the quality gates**, then produce the output.

## Writing rules

- Conflicts are concrete and source-linked: quote both sides.
- Never resolve a conflict with an unstated assumption.
- Separate hard contradictions from trade-off tensions.
- IDs: RC-001, ...; reference FR-/NFR-/BR-/CON- IDs where present.

## Quality gates

- Every conflict quotes the statements involved and their sources.
- Trade-offs are explicit for every resolution option.
- Severity and a suggested owner are given.
- No silent assumption is used to "resolve" a contradiction.
- Hard conflicts and tensions are distinguished.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Statements checked, number of conflicts by severity and type, the conflicts blocking sign-off.

## Findings
Patterns (e.g. one stakeholder group vs another, NFRs vs deadline).

## Structured outputs
### Conflict matrix
| ID | Statements | Type | Hard / tension | Why they conflict | Severity | Suggested owner |
|---|---|---|---|---|---|---|
### Severity-ranked issues
1. RC-00n — impact
### Resolution options
- RC-00n: Option A (trade-off) / Option B (trade-off) / Escalate

## Assumptions
## Constraints
## Open questions

## Recommended next skill
requirements-prioritizer to settle trade-offs by priority; problem-statement-refiner if conflicts reveal an unclear goal; decision log if present to record resolutions.
```

## Example

- **RC-001** (Logical, Hard, High): FR-004 "Guests can purchase without an account" (sales workshop) vs BR-002 "Every order must be linked to a verified customer account" (finance policy). Owner: product owner + finance. Options: A) guest checkout with account created silently after purchase (trade-off: GDPR consent design); B) keep account requirement (trade-off: conversion); C) guest checkout only below a value threshold.
- **RC-002** (Duplicate with drift, Medium): session timeout 15 min (NFR-007) vs 30 min (security note). Owner: security lead.

## Handoffs

- **requirements-prioritizer**: to decide trade-offs by value and risk.
- **problem-statement-refiner**: when conflicts show the underlying goal is unclear.
- **decision log** (if present): to record each resolution and who made it.

## Failure modes to avoid

- Resolving contradictions by quietly assuming one side is right.
- Listing "potential conflicts" without quoting the statements.
- Treating every difference as a conflict; check overlap first.
- Ignoring constraint clashes (deadline, budget) because they are not "requirements".
- Hiding unresolved conflicts behind polished wording.
