
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

### Pip based install
```
pip3 install thefuck
```

### cargo based install
```
cargo install atuin
bottom
cargo-update
delta
eza
git-delta
gitui
hexyl
lsd
minus
procs
rm-improved
tealdeer
topgrade
xcp
mprocs
```

## Fish plugins
```
fisher install e-beach/fish-logic
eth-p/fish-plugin-sudo
franciscolourenco/done
gazorby/fish-abbreviation-tips
jethrokuan/z
jorgebucaran/fisher
jorgebucaran/replay.fish
lilyball/nix-env.fish
markcial/upto
matchai/spacefish
mong8se/actually.fish
nickeb96/puffer-fish
patrickf1/fzf.fish
veirt/web-search.fish
```

## Manual addon installs
NNN - https://github.com/jarun/nnn
