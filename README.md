
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
sudo apt install \
bat \
catimg \
fzf \
fd-find \
fonts-powerline \
fish \
pleaser \
ripgrep \

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
pip3 install --user advance-touch
```

### cargo based install
```
cargo install \
amp \
astree \
atuin \
bottom \
broot \
cargo-list \
cargo-update \
choose \
colorizer \
du-dust \
dua-cli \
eza \
fastmod \
git-delta \
gitui \
hexyl \
hyperfine \
just \
mdbook \
mdbook-i18n-helpers \
mdbook-svgbob \
mprocs \
navi \
ncspot \
nu \
ouch \
oxker \
procs \
rm-improved \
serie \
skim \
spacer \
tealdeer \
tere \
the-way \
to-html \
topgrade \
wambo \
watchexec-cli \
wthrr \
xcp \
zellij \

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

## Nala

See https://gitlab.com/volian/nala/-/wikis/Installation

## Manual addon installs
NNN - https://github.com/jarun/nnn
