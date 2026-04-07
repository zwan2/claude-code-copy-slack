# /copy-slack

A [Claude Code](https://claude.ai/claude-code) slash command that converts the last assistant response from GitHub-Flavored Markdown (GFM) to Slack mrkdwn format and copies it to your clipboard.

Paste directly into Slack with correct formatting.

## What it does

| GFM | Slack mrkdwn |
|-----|-------------|
| `**bold**` | `*bold*` |
| `*italic*` | `_italic_` |
| `~~strike~~` | `~strike~` |
| `[text](url)` | `text (url)` |
| `# Heading` | `*Heading*` |
| `- item` | `• item` |
| `- [ ] task` | `☐ task` |
| `- [x] task` | `☑ task` |
| `` ``` lang`` | `` ``` `` |

**CJK support**: Automatically inserts thin spaces after formatting markers before Korean/CJK particles (을, 를, 은, 는, etc.) so Slack renders formatting correctly.

## Install

**One-liner:**

```bash
curl -fsSL https://raw.githubusercontent.com/zwan2/claude-code-copy-slack/main/install.sh | sh
```

**Manual:**

```bash
cp copy-slack.md ~/.claude/commands/
```

## Usage

In Claude Code, after any assistant response:

```
/copy-slack
```

The converted text is copied to your clipboard. Paste into Slack.

## Uninstall

```bash
rm ~/.claude/commands/copy-slack.md
```

## License

MIT
