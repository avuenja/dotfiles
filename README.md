# Dotfiles

This repository contains my personal dotfiles and configurations for various applications and tools I use.

### Installing `stow`

```sh
brew install stow
```

### Using `stow`

Passing `target` to `stow` command _(default is parent of stow dir)_

```sh
stow -t $HOME .
```

### Installing apps

```sh
brew install --cask ghostty
brew install --cask nikitabobko/tap/aerospace
brew install starship
brew install eza

brew install neovim
brew install ripgrep
brew install fd

brew install nodenv

# SketchyBar and borders
brew tap FelixKratz/formulae
brew install sketchybar
brew install --cask font-hack-nerd-font
brew install borders

# Fonts
brew install --cask sf-symbols
brew install --cask font-sf-mono
brew install --cask font-sf-pro
```

### Links to Applications

Some applications require additional setup or configuration. Below are links to their respective documentation or websites:

- [Ghostty](https://github.com/ghostty-org/ghostty)
- [Aerospace](https://github.com/nikitabobko/AeroSpace)
- [Starship](https://github.com/starship/starship)

- [Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md)

- [Nodenv](https://github.com/nodenv/nodenv?tab=readme-ov-file#installation)

- [Sketchybar](https://github.com/FelixKratz/SketchyBar?tab=readme-ov-file)
