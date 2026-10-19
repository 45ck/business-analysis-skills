---
name: assumption-extractor
description: Identify what a brief, requirements document, architecture note, or project plan is quietly assuming about users, systems, processes, policies, data, budgets, dependencies, and timelines, turn each hidden assumption into an explicit testable statement, rate its risk, and suggest how to validate it. Use this skill whenever the user asks "what are we assuming here", "what could go wrong with this plan", "is this realistic", or wants a sanity check, pre-mortem, or risk review of a spec, plan, estimate, or design; when a document looks confident but thin; when a plan depends on unstated facts about the environment, other teams, data, or approvals; or before sign-off, estimation, or project kickoff — even if they never use the word "assumption". Part of the requirements-discovery pack; hands off to constraint-detector, requirements-gap-auditor, and a project risk register if one exists.
---

# assumption-extractor

Make the unstated beliefs a plan depends on visible and checkable, so the team decides consciously which ones to rely on and which to verify first.

**Language:** reply in the language the user writes in. Quote the source text that implies each assumption verbatim in its original language.

## When to use

- A spec or brief looks confident but thin.
- A plan, estimate, or design depends on facts about the environment that nobody wrote down.
- The team may be relying on defaults that could be false (data exists, API is available, users have access, approvals are quick).
- Before sign-off, estimation, kickoff, or a go/no-go decision.

Do not use for: listing confirmed limits such as legal, budget, or technical constraints (constraint-detector), finding missing requirements (requirements-gap-auditor), or finding vague wording (ambiguity-hunter). An assumption is something believed true but not verified; a constraint is a known, confirmed limit; a gap is something missing entirely. If you find constraints or gaps, note them and hand off.

## Inputs

Brief, requirements, architecture notes, project plan, estimates, roadmap, meeting notes. Record which documents you reviewed. If the input is short, say that coverage is limited and assumptions may be missed in areas the input does not touch.

## Assumption categories to scan for

| Category | Typical hidden assumptions |
|---|---|
| Users and actors | who the users are, their skills, language, devices, access, motivation, number |
| Systems and integrations | APIs exist, are documented, stable, and accessible; environments are available |
| Data | data exists, is complete, clean, in the expected format, owned by someone, may be used |
| Volumes and performance | expected load, growth, peaks, response times |
| Processes and organization | other teams will deliver on time, decision makers are available, process stays the same |
| Policies, legal, compliance | approvals not needed or quick, regulation does not apply, data may cross borders |
| Permissions and security | access rights granted, security review is fast or not required |
| Budget and resources | funding, licenses, people, skills are available when needed |
| Timeline and dependencies | dates hold, vendors deliver, no blocking holidays or freezes |
| Business and market | demand exists, users will adopt, priorities stay stable |

## Procedure

1. **Scan** the input against the categories. Look for statements that only make sense if something else is true, and for things that are conspicuously not mentioned (e.g. a plan with no data migration step).
2. **Write each assumption explicitly** as one testable sentence: "We assume that [X] is true", with the source quote or location that implies it. Mark whether it is **Stated** (written in the input) or **Implied** (inferred by you; say from what).
3. **Rate** each assumption:
   - **Impact if wrong**: High / Medium / Low (what breaks: scope, cost, timeline, compliance, value).
   - **Likelihood of being wrong**: High / Medium / Low, with a one-line reason.
   - **Risk level**: High if either rating is High and the other is at least Medium; Low if both are Low; otherwise Medium.
4. **Suggest validation** for every High and Medium assumption: the cheapest action that confirms or refutes it (ask a named role, check a document or system, run a spike or test, look at data), who could do it, and what to do if it proves false.
5. **Separate benign defaults** (low risk, reasonable to rely on) from the high-risk shortlist so the reader is not buried in trivia.
6. **Run the quality gates**, then produce the output.

## Writing rules

- One assumption per statement; testable means someone could prove it true or false.
- Never present an assumption as a fact. If the input provides evidence, say what it is and treat it as validated, not assumed.
- Do not invent stakeholder intent or business goals to justify an assumption.
- Keep functional, non-functional, business-rule, and project/delivery assumptions in separate groups.
- Number assumptions (ASM-1, ASM-2, ...) for traceability. Short statements over prose.

## Quality gates

- Every assumption is explicit, testable, and linked to its source or the reasoning behind it.
- High-risk assumptions are clearly separated from benign defaults.
- Every High and Medium assumption has a concrete validation step.
- No assumption is presented as a fact without evidence.
- Assumptions, constraints, gaps, and open questions are not mixed together.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
Documents reviewed, number of assumptions by risk level, the top 3 assumptions most likely to hurt.

## Findings
Patterns: categories with the most hidden assumptions, notable silences in the input.

## Structured outputs
### High-risk assumptions shortlist
- **ASM-n**: statement — why it is risky — first validation step
### Assumptions register
| ID | Assumption | Category | Stated/Implied | Source | Impact | Likelihood wrong | Risk | Validation | Owner (suggested) |
|---|---|---|---|---|---|---|---|---|---|
### Benign defaults
Low-risk assumptions listed briefly.

## Assumptions
Assumptions you made yourself while doing this analysis (e.g. how you read an unclear document).

## Constraints
Confirmed limits found in the input, listed for handoff, not analysed here.

## Open questions
Numbered; each says which assumption it would resolve.

## Recommended next skill
constraint-detector for confirmed limits, requirements-gap-auditor for missing requirements, the project risk register if one exists for high-risk assumptions.
```

## Example

Input: "Phase 1: migrate customer records from the old CRM to the new platform in two weeks, then launch the self-service portal."

- **ASM-1** (Data, Implied from "migrate in two weeks"): customer records in the old CRM are complete and clean enough to migrate without a cleanup phase. Impact High, likelihood wrong High -> Risk High. Validation: profile a data sample for duplicates and missing fields; owner: data analyst.
- **ASM-2** (Systems, Implied): the old CRM allows bulk export. Impact High, likelihood Medium -> High. Validation: confirm with the CRM admin or vendor.
- **ASM-3** (Users, Implied from "self-service portal"): customers have valid email addresses to register. Impact Medium, likelihood Medium -> Medium. Validation: check email field fill rate.
- **ASM-4** (Timeline, Implied): no change freeze or peak season falls within the two weeks. Impact Medium, likelihood Low -> Medium.

## Handoffs

- **constraint-detector**: when confirmed limits (budget, legal, technical) need to be catalogued.
- **requirements-gap-auditor**: when the scan reveals missing requirements rather than hidden beliefs.
- **project risk register** (if present): to log high-risk assumptions as tracked risks with owners.

## Failure modes to avoid

- Listing dozens of trivial assumptions and hiding the dangerous ones among them.
- Presenting assumptions as facts, or facts as assumptions.
- Inventing stakeholder intent to explain what the document "must mean".
- Converting preferences into mandatory requirements.
- Hiding unresolved ambiguity behind polished wording.
- Mixing functional, non-functional, business-rule, and delivery concerns in one blob.
