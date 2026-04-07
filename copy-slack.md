Convert last assistant response (GFM → Slack mrkdwn), `pbcopy`. Exclude tool calls/system messages.

## Order & Rules

1. Protect ` ``` `/`` ` `` — no conversion inside
2. `[text](url "title?")` → `text (url)` | `[text][ref]` → `text (resolved-url)` — Slack `<url|text>` only works via API, not manual paste
3. `***t***`→`*_t_*` | `**t**`→`*t*` | `*t*`→`_t_`
4. `~~t~~`→`~t~` | ` ```lang`→` ``` ` | `# H`→`*H*`+blank line | `>>`→`>` | `- x`→`• x` | `- [ ]`→`☐` | `- [x]`→`☑` | `---`→`————————` | strip `<details><br><summary>` | literal `<>`→`&lt;&gt;`
5. **Thin Space (U+2009)**: insert after closing `*_~\`` when next char is non-whitespace/non-punctuation (Korean/CJK particles: 을를은는이가와과도에의로까지 etc.). ZWS (U+200B) does NOT work — Slack requires real whitespace as word boundary.

## Example

GFM → Slack:
```
**굵은**와 [문서](https://x.com "T")를 ~~삭제~~도 `코드`는
```
```
*굵은* 와 문서 (https://x.com)를 ~삭제~ 도 `코드` 는
```

Copy via `cat <<'SLACKEOF' | pbcopy`. Print `Copied to clipboard (Slack mrkdwn)` or `No convertible text content in the last response.`

$ARGUMENTS
