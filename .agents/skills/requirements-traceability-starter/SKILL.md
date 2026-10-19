---
name: requirements-traceability-starter
description: Create an initial traceability structure linking goals and stakeholder needs to requirements, acceptance criteria, design items, and tests, with a stable readable ID scheme and a list of coverage gaps (requirements without source, without acceptance criteria, orphan criteria, goals with no requirements). Use this skill whenever a project is growing large enough that requirement drift is a risk, several artifacts, teams, or vendors are involved, the user asks for a traceability matrix, RTM, ID scheme, or "how do we track requirements to tests", needs change-impact visibility, or must demonstrate coverage for audit, compliance, or contract acceptance — even if they never say "traceability". Part of the requirements-discovery pack; hands off to requirements-gap-auditor and to test-design or change-impact skills if installed.
---

# requirements-traceability-starter

Set up the links that let anyone answer "why does this requirement exist, how will we know it works, and what breaks if it changes", starting simple enough that the team will actually maintain it.

**Language:** reply in the language the user writes in.

## When to use

- A project is large enough that requirement drift is a risk.
- Several artifacts, teams, or vendors work from the same requirements.
- Change-impact visibility or audit coverage will be needed.
- The user asks for a traceability matrix or ID scheme.

Do not use for: finding missing topics (requirements-gap-auditor), writing acceptance criteria (acceptance-criteria-writer), or designing tests (test-design skills if installed). This skill builds the link structure and shows where links are missing.

## ID scheme (default; reuse existing IDs if present)

| Item | Prefix | Example |
|---|---|---|
| Goal / objective | G- | G-001 |
| Stakeholder need / source | SN- | SN-001 |
| Functional requirement | FR- | FR-001 |
| Non-functional requirement | NFR- | NFR-001 |
| Business rule | BR- | BR-001 |
| Constraint | CON- | CON-001 |
| Acceptance criterion | AC- | AC-001 (or FR-001-AC-01 if per requirement) |
| Design item | DES- | DES-001 |
| Test | T- | T-001 |

Rules: IDs are never reused or renumbered; deleted items are marked Deleted, not removed; three digits by default. Matches docs/ba/templates/traceability-matrix-template.csv.

## Procedure

1. **Inventory** goals, needs, requirements, criteria, and any design or test items in the input. Keep existing IDs; assign new ones only where missing, and list the mapping.
2. **Link backward**: each requirement to its source goal or stakeholder need (with document reference).
3. **Link forward**: each acceptance criterion to its requirement; leave design and test columns as placeholders where those artifacts do not exist yet.
4. **Flag coverage gaps**:
   - requirements with no source (possible gold-plating or missing goal);
   - requirements with no acceptance criteria;
   - acceptance criteria with no requirement (orphans);
   - goals with no requirements;
   - obligations (CON, compliance NFR) with no test placeholder.
5. **Recommend maintenance rules**: who updates the matrix, when (on change request, at sprint review), and what triggers an impact check.
6. **Run the quality gates**, then produce the output.

## Writing rules

- IDs are stable and readable; never renumber existing ones.
- Do not invent links; an unclear link is marked `?` with a question.
- Keep the matrix lean: one row per requirement-criterion pair, not every possible relation.
- Status per row: Draft / Agreed / Implemented / Verified / Deleted.

## Quality gates

- IDs are stable, readable, and consistently prefixed.
- Every requirement has a source or is flagged.
- Uncovered requirements and orphan criteria are flagged explicitly.
- Existing IDs are preserved, with a mapping for any new ones.
- Maintenance rules are stated.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Items traced, coverage percentages (requirements with source, with AC), key gaps.

## Findings
Patterns: requirements with no goal, goals with no requirements, obligations without tests.

## Structured outputs
### ID scheme
Prefixes used, rules, mapping of newly assigned IDs.
### Traceability matrix starter
| Goal ID | Requirement ID | Acceptance Criteria ID | Design Ref | Test Ref | Status |
|---|---|---|---|---|---|
### Coverage gaps
| Gap type | Item | Suggested action |
|---|---|---|
### Maintenance rules

## Assumptions
## Constraints
## Open questions

## Recommended next skill
requirements-gap-auditor for missing topics behind the gaps; acceptance-criteria-writer for requirements without AC; test-design or change-impact skills if installed.
```

## Example

Input: 2 goals, 6 requirements, 9 acceptance criteria.

- G-001 reduce booking errors -> FR-001, FR-002, NFR-001.
- FR-004 "export to PDF" has no goal or need -> gap: confirm source or drop.
- FR-005 has no AC -> gap: acceptance-criteria-writer.
- AC-009 refers to "discount code", no matching requirement -> orphan.
- G-002 "comply with accessibility law" has NFR-003 but no test placeholder -> add T-placeholder.
- Coverage: requirements with source 5/6; with AC 5/6.

## Handoffs

- **requirements-gap-auditor**: to examine what the coverage gaps reveal.
- **acceptance-criteria-writer**: for requirements without criteria.
- Test-design or change-impact skills (if installed): to fill test links and analyse change impact.

## Failure modes to avoid

- Renumbering or reusing IDs.
- Inventing links to make coverage look complete.
- A matrix so detailed nobody maintains it.
- Ignoring orphans and unsourced requirements.
- Hiding missing coverage behind polished wording.
