#!/usr/bin/env bash
set -euo pipefail

SKILLS=(
  pestle-analysis
  swot-prioritisation
  porters-five-forces
  value-proposition-analysis
  stakeholder-register
  power-interest-grid
  raci-matrix
  interview-design
  questionnaire-design
  workshop-design
  observation-study-plan
  prototype-elicitation
  use-case-specification
  process-model-spec
  moscow-prioritisation
  see-i-clarifier
  catwoe-root-definition
  business-problem-framing
  strategy-analysis
  stakeholder-analysis
  requirements-elicitation
  process-modelling-and-improvement
  ssm-analysis
  requirements-packager
  critical-thinking-bias-check
  assumptions-constraints-log
  evidence-gap-review
  deliverable-consistency-check
  requirements-quality-check
)

for skill in "${SKILLS[@]}"; do
  rm -rf "$HOME/.claude/skills/$skill"
  rm -rf "$HOME/.agents/skills/$skill"
  echo "Removed $skill"
done

echo "Done."
