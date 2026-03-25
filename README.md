# unwank

A Claude Code plugin that plays random sound effects when Claude finishes a response or requests permissions. Keeps you focused with 56 entertaining audio clips.

## Install

1. Add the marketplace:

```
/plugin marketplace add bigboggy/unwank
```

2. Install the plugin:

```
/plugin install unwank@unwank
```

3. Restart Claude Code.

## How it works

The plugin hooks into two Claude Code events:

- **Stop** — plays a random sound when Claude finishes a response
- **Notification** — plays a random sound when Claude requests permission

Sounds are played asynchronously via `afplay` (macOS only).
