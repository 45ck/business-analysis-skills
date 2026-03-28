#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

install_skill() {
  local skill="$1"

  local claude_dir="$HOME/.claude/skills/$skill"
  local agents_dir="$HOME/.agents/skills/$skill"

  mkdir -p "$claude_dir"
  cp "$SCRIPT_DIR/.claude/skills/$skill/SKILL.md" "$claude_dir/SKILL.md"
  echo "  .claude -> $claude_dir/SKILL.md"

  mkdir -p "$agents_dir"
  cp "$SCRIPT_DIR/.agents/skills/$skill/SKILL.md" "$agents_dir/SKILL.md"
  echo "  .agents -> $agents_dir/SKILL.md"
}

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
  acceptance-criteria-writer
  ambiguity-hunter
  assumption-extractor
  constraint-detector
  definition-of-done-drafter
  edge-case-elicitor
  functional-vs-nonfunctional-splitter
  problem-statement-refiner
  proto-requirements-normalizer
  requirements-conflict-checker
  requirements-gap-auditor
  requirements-interrogator
  requirements-prioritizer
  requirements-traceability-starter
  raci-rasci-builder
  stakeholder-communication-planner
  probe-question-generator
  pyramid-funnel-diamond-interviewer
  questionnaire-pilot-checker
  breakout-structure-designer
  as-is-process-investigator
  to-be-process-designer
  business-rule-extractor
  benefit-hypothesis-writer
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
  echo "Installing $skill..."
  install_skill "$skill"
  echo ""
done

echo "Installed ${#SKILLS[@]} skills."
