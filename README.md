# fballiano/tap

Homebrew casks for the macOS applications of Fabrizio Balliano.

| Cask | What it is | Repository |
|---|---|---|
| `clipyard` | Menu bar clipboard history and clipboard cleaner | [fballiano/clipyard](https://github.com/fballiano/clipyard) |
| `deskyard` | Menu bar switches and window management | [fballiano/deskyard](https://github.com/fballiano/deskyard) |
| `shellyard` | SSH connection manager on the Ghostty terminal engine | [fballiano/shellyard](https://github.com/fballiano/shellyard) |
| `timeyard` | Menu bar stopwatch | [fballiano/timeyard](https://github.com/fballiano/timeyard) |

## Install

Add the tap and trust it one time:

```sh
brew tap fballiano/tap
brew trust --tap fballiano/tap
```

Then install an application:

```sh
brew install --cask shellyard
```

## Move from the old names

Each application once had another name and its own tap. To move one of them
to this tap, uninstall the old cask, install the new one, and remove the old
tap:

| Old cask | New cask |
|---|---|
| `fballiano/termora/termora` | `shellyard` |
| `fballiano/clipboard-controller/clipboard-controller` | `clipyard` |
| `fballiano/desktop-commander/desktop-commander` | `deskyard` |
| `fballiano/thyme-ng/thyme-ng` | `timeyard` |

For example:

```sh
brew uninstall --cask fballiano/termora/termora
brew install --cask fballiano/tap/shellyard
brew untap fballiano/termora
```

The uninstall removes the application only. Your settings and data stay,
because each application keeps its bundle identifier and its data folders.

## How the casks are updated

The release workflow of each application commits the new `version` and
`sha256` to its cask here. It pushes with a deploy key that has write access
to this repository only. Do not edit `version` or `sha256` by hand.
