
# Mion Giovanni Environement

Personnal working environement settup

## Tabby
Tabby terminal emulator 
Install from https://tabby.sh/

## Neovim
Install from https://github.com/neovim/neovim/releases
Then make it great using https://github.com/NvChad/NvChad
And customize it with cp -r config/nvim/lua/custom ~/.config/nvim/lua/custom 

## Command line tools
### apt based install
``
sudo apt install
micro
cargo
fzf
bat
fd-find
ripgrep
fonts-powerline
fish
``
### curl based install
#### Bash side
```
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash
```
#### Fish side
```
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
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

## Micro plugins
```
micro -plugin install detectindent
micro -plugin install bookmark
micro -plugin install fzf
micro -plugin install manipulator
micro -plugin install quoter
micro -plugin install fish
micro -plugin install jump
micro -plugin install filemanager
```

## Manual installs
NNN - https://github.com/jarun/nnn
