# homebrew-boopaste

Official Homebrew tap for [boopaste](https://github.com/0kira-vgl/boopaste):
a macOS daemon that pastes clipboard images as a real file path when you hit
⌘V in [Ghostty](https://ghostty.org) or Terminal.app.

## Install

```bash
brew tap 0kira-vgl/boopaste
brew install boopaste
boopaste init
```

`init` sets up the `.app` bundle and the LaunchAgent, it doesn't turn
boopaste on by itself. Run `boopaste on` next.

See the [main repo](https://github.com/0kira-vgl/boopaste) for full
documentation: requirements, commands, macOS permissions, and how it works
internally.

## Formula

[`Formula/boopaste.rb`](Formula/boopaste.rb) pulls the prebuilt arm64
binary straight from [boopaste's GitHub
Releases](https://github.com/0kira-vgl/boopaste/releases), pinned by
SHA256. It's bumped by hand on every new release.

## License

MIT, same as [boopaste](https://github.com/0kira-vgl/boopaste/blob/dev/LICENSE).
