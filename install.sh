#!/usr/bin/env bash
set -e

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link() {
  local src="$1" dest="$2"
  mkdir -p "$(dirname "$dest")"
  if [ -e "$dest" ] && [ ! -L "$dest" ]; then
    echo "Backing up $dest -> $dest.bak"
    mv "$dest" "$dest.bak"
  fi
  ln -sfn "$src" "$dest"
  echo "Linked $dest -> $src"
}

link "$DOTFILES/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
link "$DOTFILES/zsh/.zshrc"        "$HOME/.zshrc"
[ -f "$DOTFILES/zsh/.p10k.zsh" ] && link "$DOTFILES/zsh/.p10k.zsh" "$HOME/.p10k.zsh"
link "$DOTFILES/nvim"              "$HOME/.config/nvim"

echo "Done. Restart kitty / shell / nvim."
