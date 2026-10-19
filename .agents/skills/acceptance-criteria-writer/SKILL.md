---
name: acceptance-criteria-writer
description: Convert requirements, user stories, or feature descriptions into observable, testable acceptance criteria (Given/When/Then), including negative criteria and a ready-for-test checklist. Use this skill whenever the user mentions acceptance criteria, AC, definition of done, "done condition", testable requirements, Given/When/Then, BDD scenarios, or story refinement, and also when a requirement or story is too vague to test, when QA or implementation is about to start without clear pass/fail conditions, or when the user asks "how do we know this is done?" — even if they never say "acceptance criteria". Part of the requirements-discovery pack; hands off to edge-case-elicitor and requirements-traceability-starter.
---

# acceptance-criteria-writer

Turn requirements and stories into criteria that a tester, developer, and product owner would all read the same way and could verify without asking the author what was meant.

**Language:** reply in the language the user writes in. Keep Given/When/Then keywords in the user's language if they use one consistently; otherwise English.

## When to use

- Requirements are too high-level to test.
- Stories exist but there is no clear "done" condition.
- Criteria are needed before implementation, estimation, or QA work.
- Existing criteria are vague ("works correctly", "fast", "user-friendly") and need rewriting.

Do not use for: writing the requirements themselves from scratch (use requirements discovery skills first), writing full test cases or test scripts (hand off to test design), or finding hidden wording problems (use ambiguity-hunter first if the input is very vague).

## Inputs

Accept any of: requirements, story or feature description, constraints, business rules, existing draft criteria, screenshots or specs. If a critical input is missing (who the actor is, what the trigger is, what the business rule says), do not invent it. Write the criteria you can, and list the rest as open questions.

## Procedure

1. **Restate each feature** as actor + trigger + expected outcome. One line per feature. If any of the three cannot be determined from the input, flag it.
2. **Cover the behavior space** for each feature, only where relevant:
   - success path
   - validation and invalid input
   - permissions and roles
   - state and preconditions (empty, first-time, already-done, expired)
   - failure and error handling
   - edge cases and limits (boundaries, volumes, concurrency, time)
   - non-functional criteria only if the input states them (performance, accessibility, security), kept separate from functional ones
3. **Write each criterion** in Given/When/Then (or an equivalent observable format such as a rule + example table). One behavior per criterion.
4. **Write negative criteria**: what must NOT happen (e.g. data is not saved, no email is sent, user without role X cannot see Y).
5. **Mark blocked criteria**: any criterion that depends on an unresolved ambiguity gets a `BLOCKED` tag and a link to the open question that blocks it.
6. **Run the quality gates** below, then fill the ready-for-test checklist.

## Writing rules

- Observable: describe what a user or system visibly does or returns, not internal mechanics.
- Verifiable: a tester can decide pass/fail without asking the author.
- Specific: replace "quickly", "valid", "appropriate" with numbers, lists, or references to a named rule. If the number is unknown, ask, do not guess.
- No hidden implementation detail (database, framework, endpoint names) unless the user explicitly requires it.
- Preferences are not requirements: do not make something mandatory without evidence in the input.
- Keep functional, non-functional, and business-rule criteria in separate groups.
- Prefer short, testable statements over prose. Give each criterion an ID (AC-1, AC-2, NEG-1) so it can be traced later.

## Quality gates

- Every criterion is observable and verifiable.
- Success path and the important failure modes are both covered.
- No invented stakeholder intent; every criterion traces to the input or is listed as an assumption.
- Unresolved ambiguity is visible (BLOCKED + open question), not hidden behind polished wording.
- Facts, assumptions, constraints, and open questions are clearly separated.

## Output format

Use this skeleton. Drop empty sections instead of padding them.

```md
## Summary
One or two sentences: what feature, what scope, how many criteria, how many blocked.

## Findings
Gaps or problems found in the input (vague wording, missing actor, conflicting rules).

## Structured outputs
### Acceptance criteria
- **AC-1** (success): Given ... When ... Then ...
- **AC-2** (validation): ...
### Negative criteria
- **NEG-1**: Given ... When ... Then ... must not ...
### Ready-for-test checklist
- [ ] Every story has at least one success and one failure criterion
- [ ] All criteria are measurable (no unquantified adjectives)
- [ ] Roles and permissions covered
- [ ] Test data and environment needs identified
- [ ] No BLOCKED criteria remain (or each has an owner)

## Assumptions
Things taken as true without confirmation.

## Constraints
Business rules, technical or legal limits given in the input.

## Open questions
Numbered; each says which criteria it blocks.

## Recommended next skill
Usually edge-case-elicitor (to extend coverage) or requirements-traceability-starter (to link AC to requirements). Test-design skills once available.
```

## Example

Input: "Users can reset their password."

Output (abridged):
- **AC-1** (success): Given a registered user with a verified email, When they request a reset and open the link within [BLOCKED: link lifetime?], Then they can set a new password and are signed in.
- **AC-2** (validation): Given the reset form, When the new password breaks the password policy, Then the form shows which rule failed and the password is not changed.
- **NEG-1**: Given an email that is not registered, When a reset is requested, Then the response is identical to the registered case (no account disclosure).
- Open question 1: link lifetime and single-use? Blocks AC-1.

## Handoffs

- **edge-case-elicitor**: when criteria need deeper boundary, concurrency, or abuse scenarios.
- **requirements-traceability-starter**: to map each AC ID back to its requirement.
- **test-design skills**: when criteria are stable and ready to become test cases.

## Failure modes to avoid

- Inventing stakeholder intent or business rules.
- Converting preferences into mandatory requirements.
- Hiding ambiguity behind confident wording.
- Mixing functional, non-functional, and business-rule concerns in one blob.
- Writing criteria that only describe the happy path.
