# homebrew-grok

Homebrew tap for [`grok`](https://github.com/carmilea/grok-build), a
privacy-hardened fork of [xai-org/grok-build](https://github.com/xai-org/grok-build)
(telemetry and startup phone-home disabled).

## Install

```sh
brew install carmilea/grok/grok
```

## Updating

`Formula/grok.rb` is kept in sync automatically by the `tap` job in
[carmilea/grok-build](https://github.com/carmilea/grok-build)'s release
workflow: every `fork-*` tag push updates `version`, `url`, and `sha256`
to point at the newest macOS (arm64) release asset. Don't hand-edit those
three fields; they'll be overwritten on the next release.
