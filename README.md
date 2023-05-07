
# Mion Giovanni Environement

Personnal working environement settup

## Tabby
Tabby terminal emulator 
Install from https://tabby.sh/

## Neovim
Install from https://github.com/neovim/neovim/releases

Then make it great using https://github.com/NvChad/NvChad

And customize it with cp -r config/nvim/lua/custom ~/.config/nvim/lua/custom 

Install those LSP server using Mason:
```
  Installed
    󰄳  bash-language-server 
    󰄳  clangd 
    󰄳  cmake-language-server 
    󰄳  groovy-language-server 
    󰄳  kotlin-language-server 
    󰄳  lua-language-server 
    󰄳  pylyzer 
    󰄳  python-lsp-server 
    󰄳  vim-language-server 
    󰄳  yaml-language-server 
```

## Command line tools
### apt based install
```
sudo apt install
catimg
fzf
bat
fd-find
ripgrep
fonts-powerline
fish
```
### curl based install
#### Bash side
```
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
```
#### Fish side
```
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

### cargo based install
```
cargo install atuin
cargo install bottom
cargo install cargo-update
cargo install delta
cargo install exa
cargo install git-delta
cargo install gitui
cargo install hexyl
cargo install lsd
cargo install minus
cargo install procs
cargo install rm-improved
cargo install tealdeer
cargo install topgrade
cargo install xcp
```

## Fish plugins
```
fisher install e-beach/fish-logic
fisher install eth-p/fish-plugin-sudo
fisher install franciscolourenco/done
fisher install gazorby/fish-abbreviation-tips
fisher install jethrokuan/z
fisher install jorgebucaran/fisher
fisher install jorgebucaran/replay.fish
fisher install lilyball/nix-env.fish
fisher install markcial/upto
fisher install matchai/spacefish
fisher install mong8se/actually.fish
fisher install nickeb96/puffer-fish
fisher install patrickf1/fzf.fish
fisher install veirt/web-search.fish
```

## Manual installs
NNN - https://github.com/jarun/nnn
