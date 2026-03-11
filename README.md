# diagnostic-tool

Two Claude Code skills for diagnosing AI systems in client codebases.

**`/diagnostic`** scans a repo step-by-step and produces 8 numbered artifacts: system overview, component map, data flow diagrams, AI audit, risk assessment, cost analysis, client questions, and architecture diagram.

**`/report`** reads those artifacts and builds a client-facing deliverable interactively — approve, edit, or add notes to each section.

Built for consultants who audit AI systems built by agencies or freelancers. The diagnostic runs read-only against untrusted codebases with credential redaction and anti-prompt-injection guardrails.

## Install

```bash
./install.sh
```

This symlinks the skills to `~/.claude/skills/`. Then `/diagnostic` and `/report` are available in any repo.

## Usage

```bash
# In a client's cloned repo:
/diagnostic          # Interactive — pauses after each step
/diagnostic --fast   # Run all steps without pauses

# After the scan:
/report                        # Interactive — review each section
/report --fast --name "Jane"   # Auto-approve all sections
```

## Output

`/diagnostic` writes to a `diagnostic/` directory:

| File | Contents |
|------|----------|
| `00-overview.md` | System summary, stack, size |
| `01-components.md` | Component map with health ratings |
| `02-data-flow.md` | Data flow analysis + mermaid diagram |
| `03-ai-audit.md` | Models, prompts, RAG config, risks |
| `04-risks.md` | Risk assessment (audience-facing first) |
| `05-costs.md` | Paid services and waste flags |
| `06-client-questions.md` | Tailored session questions |
| `07-architecture.md` | Architecture diagram + legend |

`/report` produces a single `report-YYMMDD-client-name.md` in the repo root.

## Safety

- Read-only analysis — never modifies client repo files
- `chmod 600` on all output files
- Credential patterns redacted before writing (API keys, tokens, connection strings)
- Untrusted codebase content treated as data, not instructions
- Allowed-tools whitelist enforced per skill

## License

MIT
