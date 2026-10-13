# SKAWA Innovation Homebrew tap

Homebrew casks for apps published by [SKAWA Innovation](https://typoflip.com/).

## Typoflip

[Typoflip](https://typoflip.com/?ref=brew-en) is a macOS menu bar app that fixes text typed in the wrong keyboard
layout and switches to the right layout for you. It pairs an English layout with Czech, French, German, Greek,
Hungarian, Russian, Spanish, Turkish or Ukrainian.

```bash
brew install --cask skawa-innovation/tap/typoflip
```

- Requires macOS 13 Ventura or later (Apple silicon or Intel).
- On first launch Typoflip asks for the Accessibility permission, which it needs to see what you type.
- The app updates itself (Sparkle), so `brew upgrade` does not need to touch it.
- Free for the first month, then €1 a month. Details: https://typoflip.com/

Uninstall, including settings and caches:

```bash
brew uninstall --zap --cask typoflip
```

## Maintainers

After each release, update `version` and `sha256` in `Casks/typoflip.rb`:

```bash
shasum -a 256 build/Typoflip-<version>.dmg
brew style --cask skawa-innovation/tap/typoflip
brew audit --cask --online skawa-innovation/tap/typoflip
brew livecheck --cask skawa-innovation/tap/typoflip
```

Questions: hello@typoflip.com
