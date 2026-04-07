# /copy-slack

A [Claude Code](https://claude.ai/claude-code) slash command that converts the last assistant response from GitHub-Flavored Markdown (GFM) to Slack mrkdwn format and copies it to your clipboard.

No more broken bold, mangled links, or invisible formatting when pasting into Slack.

## Why

Claude Code responds in GitHub-Flavored Markdown. Slack uses its own markup syntax called [mrkdwn](https://api.slack.com/reference/surfaces/formatting). Pasting GFM directly into Slack produces broken formatting — mismatched bold/italic, raw `[link](url)` syntax, and garbled lists.

`/copy-slack` handles the conversion automatically so you can paste with confidence.

## What it converts

| GFM | Slack mrkdwn |
|-----|-------------|
| `**bold**` | `*bold*` |
| `*italic*` | `_italic_` |
| `***bold italic***` | `*_bold italic_*` |
| `~~strike~~` | `~strike~` |
| `[text](url)` | `text (url)` |
| `# Heading` | `*Heading*` |
| `- item` | `• item` |
| `- [ ] task` | `☐ task` |
| `- [x] task` | `☑ task` |
| `` ```lang `` | `` ``` `` |
| `---` | `————————` |

> **CJK support** — Automatically inserts thin spaces after formatting markers before Korean/CJK particles (을, 를, 은, 는, etc.) so Slack renders formatting correctly.

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

```
1. /copy-slack          ← run in Claude Code
2. Cmd + V              ← paste into Slack message box
3. Cmd + Shift + F      ← apply Slack formatting
```

That's it. Your message is now properly formatted in Slack.

## Uninstall

```bash
rm ~/.claude/commands/copy-slack.md
```

## Requirements

- [Claude Code](https://claude.ai/claude-code) CLI, desktop app, or IDE extension
- macOS (`pbcopy`), Linux (`xclip` / `wl-copy`), or WSL (`clip.exe`)

## License

[MIT](LICENSE)
