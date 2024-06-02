# Dependencies (Debian)

install neovim atleast v0.10.0

```
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install tmux
chsh -s `which zsh`
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo apt-get install ripgrep
curl -L https://gist.github.com/ivangabriele/5df77e2bf55352418704f45ce07323b8/raw/install_kitty.sh | bash /dev/stdin
```
## If the above is missing using this script for kitty
```
#!/bin/bash

########################################
# Functions

# Conditionally add `$HOME/.local/bin` to the `PATH` in any given shell rc file
update_shell_rc() {
  local shell_rc=$1
  if [ -f "$shell_rc" ]; then
    if ! grep -q 'export PATH="$HOME/.local/bin:$PATH"' "$shell_rc"; then
      echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$shell_rc"
    fi
  fi
}

########################################
# Insctructions

# Install Kitty
# https://sw.kovidgoyal.net/kitty/binary/#binary-install
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# Create ~/.local/bin/ if it doesn't exist
if [ ! -d "$HOME/.local/bin" ]; then
  mkdir -p "$HOME/.local/bin"
fi

# Add `~/.local/bin/` to the `PATH` in `~/.bashrc`
update_shell_rc "$HOME/.bashrc"
# Add `~/.local/bin/` to the `PATH` in `~/.zshrc` (if it exists)
update_shell_rc "$HOME/.zshrc"

# Also add `~/.local/bin` to the `PATH` for the current script
# in order to make below `kitty` & `kitten` symlinks immediately available in the current shell
export PATH="$HOME/.local/bin:$PATH"

# Link `kitty` & `kitten` binary to make it available in default bash teminals,
# making them available as global commands
# https://sw.kovidgoyal.net/kitty/binary/#desktop-integration-on-linux
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/

# Create Kitty Desktop files
# https://sw.kovidgoyal.net/kitty/binary/#desktop-integration-on-linux
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
```

# Get Fira Code fonts from nerdfonts

# Installation 
```
./install
```
and that should be it?
