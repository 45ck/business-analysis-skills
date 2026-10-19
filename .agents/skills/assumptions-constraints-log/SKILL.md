---
name: assumptions-constraints-log
description: Extract, normalise, and consolidate assumptions, constraints, and dependencies from one or more artifacts (briefs, requirements, plans, architecture notes, meeting notes, or outputs of other analysis skills) into a single reviewable register with severity, evidence status, owners, and a watchlist, then give a ready / not-ready verdict. Use this skill whenever the user wants one place for assumptions and constraints, asks to build or update an assumptions log, RAID log (assumptions and dependencies part), constraints list, or dependency map, says these items are scattered across documents, wants to check whether a project framing is review-ready, or is preparing for sign-off, kickoff, a steering committee, or an audit — even if they never say "register". Use it after assumption-extractor and constraint-detector to merge their results, or on its own when the material is raw.
---

# assumptions-constraints-log

Bring every assumption, constraint, and dependency that the work relies on into one normalised register, so reviewers can see at a glance what is believed, what is fixed, what depends on whom, and whether the framing is ready to proceed.

**Language:** reply in the language the user writes in. Quote source text verbatim in its original language.

## When to use

- Project framing or requirements contain implicit assumptions and constraints.
- Assumptions, constraints, and dependencies are scattered across several documents, notes, or earlier skill outputs.
- A review, sign-off, kickoff, or audit needs a single visible list with owners.
- An existing register needs to be cleaned up: duplicates, vague items, missing owners, stale entries.

Do not use for: deep discovery of hidden assumptions in a single document (assumption-extractor does that first), detailed analysis of individual constraints (constraint-detector), finding missing requirements (requirements-gap-auditor), or managing project risks and issues in general (project risk register). This skill consolidates and judges readiness; it does not replace them.

## Definitions (apply them consistently)

- **Assumption**: believed true, not yet verified. Can turn out false.
- **Constraint**: a confirmed limit the solution must respect (budget, deadline, regulation, technology, policy, capacity). Not negotiable without a decision by its owner.
- **Dependency**: something the work needs from outside its own control (another team, vendor, system, decision, data, approval), with a direction (we depend on X / X depends on us) and a needed-by date where known.
- **Watchlist item**: something that is not yet a problem but should be monitored because it could become a high-severity assumption failure, a constraint change, or a blocked dependency.

If an item does not fit any definition (e.g. it is a requirement, a risk, an issue, or an opinion), do not force it in; list it under "Out of scope items" with a suggested destination.

## Inputs

- the artifact(s) or analysis outputs under review (including results of assumption-extractor or constraint-detector, if available)
- source material that backs or contradicts items
- project context: goal, phase, decision coming up, and the quality bar the user expects

Record which sources were reviewed. If the quality bar is not stated, use the default readiness rule below and say so.

## Procedure

1. **Collect.** Go through each source systematically and pull every candidate item, with its source location and verbatim quote.
2. **Classify** each item as assumption, constraint, or dependency using the definitions. Reclassify where sources mislabel things (e.g. an "assumption" that is actually a confirmed constraint, or a "constraint" that nobody has confirmed).
3. **Normalise.** Rewrite each item as one clear, testable statement. Merge duplicates and near-duplicates, keeping all sources. Split compound items so each line holds one idea.
4. **Check evidence.** Mark each item **Evidenced** (backed by a document, decision, data, or named confirmation) or **Inferred** (concluded from context; state from what). Note contradictions between sources as findings.
5. **Assess severity** of each item: High / Medium / Low, based on what breaks if the assumption is false, the constraint is violated, or the dependency is late.
6. **Find register defects:** missing owner, no validation or due date, vague wording, contradictory items, items without source, constraints with no confirming authority, dependencies without a needed-by date, stale entries.
7. **Recommend targeted fixes** for the highest-severity defects first: a specific rewrite, a named owner role to assign, a concrete validation step. Do not rewrite the whole source artifact.
8. **Build the watchlist** from items that are acceptable now but could escalate, with the trigger that would escalate them.
9. **Decide readiness** using the rule below and state what would make the register review-ready if it is not.

## Readiness rule (default)

**Ready** when all of the following hold:
- every High-severity item has an owner and either evidence or a scheduled validation;
- no unresolved contradictions remain between High or Medium items;
- every constraint names its source or confirming authority;
- every High or Medium dependency has a counterpart and a needed-by date (or an explicit "date unknown" with an owner to find it).

**Not ready** otherwise. List the blocking items. If the user states a different quality bar, use theirs and say so.

## Writing rules

- Be concrete: name the item, the defect, and the fix. No generic criticism ("needs more detail").
- One idea per register line. Number items: ASM-n, CON-n, DEP-n, WATCH-n.
- Never present an inferred item as evidenced.
- Do not invent owners, dates, or stakeholder intent; suggest an owner role and mark it as suggested.
- Keep functional, non-functional, business-rule, and delivery items distinguishable through a category field.
- Focus output on the highest-leverage defects; list low-severity cosmetic fixes briefly at the end.

## Quality gates

- Every item is classified using the definitions, with a source.
- Duplicates are merged; every line holds one idea.
- Evidenced and inferred items are distinguished.
- Severity is assigned to every item, and the reasoning for each High is visible.
- Fixes are specific and prioritised.
- A ready / not-ready verdict is given with the rule used and the blockers listed.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Sources reviewed, counts (assumptions / constraints / dependencies, by severity), verdict: READY or NOT READY, top blockers.

## Findings
Register defects and contradictions, highest severity first, each with a targeted fix.

## Structured outputs
### Assumptions register
| ID | Assumption | Category | Evidence | Source | Severity | Owner (suggested) | Validation / due |
|---|---|---|---|---|---|---|---|
### Constraints register
| ID | Constraint | Type (budget/time/legal/tech/policy/capacity) | Confirming authority | Source | Severity | Impact on solution |
|---|---|---|---|---|---|---|
### Dependency notes
| ID | We depend on / Depends on us | Counterpart | What is needed | Needed by | Status | Severity |
|---|---|---|---|---|---|---|
### Watchlist
| ID | Item | Linked to | Escalation trigger | Check frequency |
|---|---|---|---|---|
### Out of scope items
Items that are risks, issues, requirements, or opinions, with suggested destination.

## Readiness decision
READY / NOT READY, rule used, blocking items, what would make it ready.

## Open questions
Numbered; each says which register items it would resolve.

## Recommended next skill
assumption-extractor if a source has not been mined for hidden assumptions yet; constraint-detector for constraints needing deeper analysis; requirements-gap-auditor for missing requirements found; project risk register for high-severity items that should be tracked as risks.
```

## Example

Sources: project brief + architecture note.

- Brief says "We assume the payment provider supports refunds via API." Architecture note says "Refunds handled manually by finance (provider API does not support partial refunds)."
- Finding (High): contradiction between ASM-3 and the architecture note. Fix: confirm with the provider's documentation which refund types the API supports; owner: solution architect (suggested). Until resolved, ASM-3 is Inferred and blocks readiness.
- CON-2: "Go-live no later than 1 March" — Type: time, Confirming authority: not stated -> defect. Fix: name who set the date (sponsor?) and record the decision.
- DEP-1: We depend on the finance team for refund handling; needed-by date missing -> defect.
- WATCH-1: provider announced API changes for next year; trigger: release notes mention refund endpoints.
- Verdict: NOT READY — blockers: contradiction on ASM-3, CON-2 without authority, DEP-1 without date.

## Handoffs

- **assumption-extractor**: to mine a source for hidden assumptions before consolidation.
- **constraint-detector**: to analyse constraints in depth.
- **requirements-gap-auditor**: when missing requirements are found.
- **project risk register** (if present): to track high-severity items as risks with mitigation.

## Failure modes to avoid

- Mixing assumptions, constraints, dependencies, risks, and requirements in one list.
- Presenting inferred items as evidenced.
- Inventing owners, dates, or decisions.
- Generic criticism instead of targeted fixes.
- Rewriting the whole source artifact when only register items need fixing.
- Burying high-severity defects under many cosmetic ones.
- Giving no clear ready / not-ready verdict.
