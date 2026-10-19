---
name: constraint-detector
description: Identify the hard and soft boundaries that shape the solution space — technical, platform, integration, legal and regulatory, organisational, financial, time, procurement, capability, and environment constraints — with their source, hard/soft status, and which design options each one removes or weakens. Use this skill whenever the user asks "what are our limits", "what can't we do", "what is mandated", is choosing a solution, vendor, or architecture before checking boundaries, mentions mandated tools, vendors, standards, deadlines, budgets, regulations, data residency, or legacy systems, or is starting feasibility, estimation, or architecture work — even if they never use the word "constraint". Part of the requirements-discovery pack; hands off to requirements-prioritizer, definition-of-done-drafter, and architecture-option-review if present.
---

# constraint-detector

Find the real limits a solution must respect, separate them from preferences and assumptions, and show what each limit does to the design options, so nobody designs something that can never be approved, bought, built, or run.

**Language:** reply in the language the user writes in. Quote source text verbatim in its original language.

## When to use

- A team is picking a solution before checking boundaries.
- A brief references mandated tools, vendors, standards, deadlines, budgets, environments, or regulations.
- Feasibility, estimation, or architecture work is starting.
- A proposal seems to ignore legal, security, procurement, or operational limits.

Do not use for: hidden beliefs that are not yet verified (assumption-extractor), consolidating assumptions and constraints from many sources into one log with a readiness verdict (assumptions-constraints-log), or contradictions between requirements (requirements-conflict-checker). A constraint is a confirmed or authoritatively imposed limit; if it is only believed, it is an assumption.

## Constraint categories

| Category | Examples |
|---|---|
| Technical / platform | mandated cloud, language, OS, browser support, legacy system that must stay |
| Integration | systems that must be connected, API limits, data formats, batch windows |
| Legal / regulatory | GDPR and data residency, accessibility law, sector regulation, retention rules |
| Security / privacy | approved identity provider, encryption standards, security review gates |
| Organisational / policy | approval processes, change freezes, internal standards, union agreements |
| Financial | budget ceiling, capex vs opex rules, licence limits |
| Time | fixed deadlines, contractual dates, regulatory effective dates |
| Procurement / vendor | approved vendor list, tender requirements, existing contracts |
| Capability / capacity | team skills, headcount, support hours, operational capacity |
| Environment / physical | locations, connectivity, devices, offline use |

## Procedure

1. **Extract explicit constraints**: every stated restriction, with verbatim quote and source.
2. **Infer likely constraints** from context (platform, regulation, industry, team, procurement, environment, integrations). Mark each as **Inferred** with the reasoning and a question to confirm it; never present it as confirmed.
3. **Classify** each item:
   - **Hard**: non-negotiable without a decision by a named authority (law, contract, signed policy, physical limit).
   - **Soft**: strong preference or default that could be changed with justification.
   - **Not a constraint**: preference, assumption, or design choice; move it out with a note (assumption -> assumption-extractor; design choice -> record as a decision to revisit).
4. **Record source and authority**: document, regulation, or person, and who can relax or waive it.
5. **Analyse design impact**: for each hard constraint, which options it removes, weakens, or forces, and which requirements it adds (often non-functional).
6. **Spot tension** between constraints (e.g. deadline vs mandatory security review) and flag it for requirements-conflict-checker.
7. **Run the quality gates**, then produce the output.

## Writing rules

- One constraint per line, stated as a limit: "The solution must / must not ...".
- Never label a preference as a hard constraint; if the status is unclear, mark it Soft (unconfirmed) and ask.
- Every constraint names a source and, where known, an authority. Missing ones are flagged, not invented.
- Keep constraints separate from functional requirements, assumptions, and risks.
- IDs: CON-001, CON-002, ... (matches docs/ba/templates/assumptions-and-constraints-template.md).

## Quality gates

- Preferences are not mislabelled as hard constraints.
- Every constraint has a source (or is marked Inferred with a confirming question).
- Hard vs soft is decided for every item, with the authority where known.
- Design implications are captured for every hard constraint.
- Tensions between constraints are flagged.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Sources reviewed, number of constraints (hard / soft / inferred), the constraints that most narrow the solution space.

## Findings
Constraints that eliminate options, tensions between constraints, items that were mislabelled.

## Structured outputs
### Constraint register
| ID | Constraint | Category | Hard/Soft | Status (explicit/inferred) | Source | Authority | Design impact |
|---|---|---|---|---|---|---|---|
### Design impact notes
- CON-00n: removes option X; forces Y; adds requirement Z
### Moved out (not constraints)
| Item | Actually is | Destination |
|---|---|---|

## Assumptions
Beliefs you relied on while classifying.

## Constraints
(The register above is the main content; summarise only the hard ones here.)

## Open questions
Numbered; each says which constraint it would confirm or relax.

## Recommended next skill
requirements-prioritizer to rank work within the limits; definition-of-done-drafter to turn mandatory gates (security review, accessibility) into done criteria; architecture-option-review if present to evaluate options against hard constraints.
```

## Example

Brief: "Customer portal on our Azure tenant, live before the 1 July price change, payments via our current provider, EU customers only."

- **CON-001** (Technical, Hard, explicit): must run on the company Azure tenant. Authority: IT architecture board. Impact: rules out SaaS portal products hosted outside the tenant.
- **CON-002** (Time, Hard?, explicit): live before 1 July. Authority: [TBD] — confirm whether the price change date is contractual or a target -> Soft until confirmed.
- **CON-003** (Integration, Hard, explicit): payments via the current provider. Impact: portal must use its supported checkout flows.
- **CON-004** (Legal, Hard, inferred from "EU customers"): GDPR applies; personal data stored in the EU. Question: is there an internal data residency policy?
- Tension: CON-002 vs the mandatory security review lead time (unknown) -> requirements-conflict-checker.

## Handoffs

- **requirements-prioritizer**: to prioritise within the confirmed limits.
- **definition-of-done-drafter**: to turn mandatory gates into done criteria.
- **architecture-option-review** (if present): to assess options against hard constraints.
- **assumptions-constraints-log**: to consolidate constraints with assumptions and dependencies.

## Failure modes to avoid

- Labelling preferences or habits as hard constraints.
- Presenting inferred constraints as confirmed.
- Listing constraints without saying what they do to the design.
- Inventing sources or authorities.
- Mixing constraints with requirements, assumptions, and risks.
- Hiding unresolved status behind polished wording.
