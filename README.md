# business-analysis-skills

<p align="center">
  <img src="logo.svg" alt="business-analysis-skills logo" width="128" height="128" />
</p>

<p align="center">
  <img src="banner.svg" alt="business-analysis-skills banner" width="100%" />
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="MIT License" /></a>
  <img src="https://img.shields.io/badge/skills-29-0f766e" alt="29 skills" />
  <img src="https://img.shields.io/badge/tracks-3-115e59" alt="3 tracks" />
</p>

A platform-neutral business analysis skill pack for AI assistants. It bundles atomic techniques, orchestrated workflows, and quality controls into one reusable repo.

## Included skill groups

- `atomic/` for single-technique skills such as SWOT, PESTLE, RACI, use cases, workshops, interviews, and process specs
- `workflows/` for end-to-end BA sequences such as problem framing, strategy analysis, stakeholder analysis, elicitation, process improvement, SSM, and packaging
- `quality/` for evidence gaps, assumptions, consistency, bias checks, and requirements quality

## Install

### Option A: Install globally

```bash
git clone https://github.com/your-name/business-analysis-skills.git
cd business-analysis-skills
bash install.sh
```

This installs every packaged skill into both:

- `~/.claude/skills/`
- `~/.agents/skills/`

### Option B: Copy into a project

```bash
cp -R .claude /path/to/your-project/
cp -R .agents /path/to/your-project/
```

### Uninstall

```bash
bash uninstall.sh
```

## Usage

Use the workflow skills first when the task is broad, then drop to atomic skills for specific techniques, and finish with a quality pass.

Example prompts:

```text
/business-problem-framing claims triage process
/stakeholder-analysis payroll replacement program
/requirements-elicitation onboarding workflow
/process-modelling-and-improvement invoice approval process
/requirements-packager convert discovery notes into a delivery-ready requirements pack

/swot-prioritisation launch of a student support portal
/porters-five-forces local food delivery platform
/raci-matrix identity migration project
/use-case-specification submit and approve leave request
/process-model-spec incident escalation workflow

/evidence-gap-review proposed CRM migration
/requirements-quality-check draft booking requirements
/deliverable-consistency-check BA artifact pack
```

## Repo structure

```text
atomic/                              original source grouping
workflows/                           original source grouping
quality/                             original source grouping
.claude/skills/<skill>/SKILL.md      packaged skill format
.agents/skills/<skill>/SKILL.md      mirrored packaged skill format
install.sh                           global installer
uninstall.sh                         global uninstaller
LICENSE                              MIT
```

## Notes

- The original category folders are preserved so the repo still reflects the upstream source organization.
- The packaged `.claude` and `.agents` folders make the repo easier to install and publish.
- This repo is intentionally platform-neutral in naming and documentation.

## License

[MIT](LICENSE)
