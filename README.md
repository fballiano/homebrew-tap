# fballiano/tap

Homebrew casks for the macOS applications of Fabrizio Balliano.

| Cask | What it is | Repository |
|---|---|---|
| `clipboard-controller` | Menu bar clipboard history and clipboard cleaner | [fballiano/clipboard-controller](https://github.com/fballiano/clipboard-controller) |
| `desktop-commander` | Menu bar switches for macOS and window management | [fballiano/desktop-commander](https://github.com/fballiano/desktop-commander) |
| `termora` | SSH connection manager on the Ghostty terminal engine | [fballiano/termora](https://github.com/fballiano/termora) |
| `thyme-ng` | Menu bar stopwatch | [fballiano/thyme-ng](https://github.com/fballiano/thyme-ng) |

## Install

Add the tap and trust it one time:

```sh
brew tap fballiano/tap
brew trust --tap fballiano/tap
```

Then install an application:

```sh
brew install --cask fballiano/tap/thyme-ng
```

Always use the full name for Termora. The main Homebrew cask repository has
a different application that is also called "termora":

```sh
brew install --cask fballiano/tap/termora
```

## Move from the old taps

Each application was once its own tap, for example `fballiano/termora`.
Those casks no longer get new versions. To move one application to this tap:

```sh
brew uninstall --cask fballiano/termora/termora
brew install --cask fballiano/tap/termora
brew untap fballiano/termora
```

The uninstall removes the application only. Your settings and data stay.

## How the casks are updated

The release workflow of each application commits the new `version` and
`sha256` to its cask here. It pushes with a deploy key that has write access
to this repository only. Do not edit `version` or `sha256` by hand.
