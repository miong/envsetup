if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    set -gx ATUIN_NOBIND "true"
    atuin init fish | source

    #Alias
    alias bat="batcat"

    #Abbreviations
    abbr -a -- cp xcp
    abbr -a -- cd z
    abbr -a -- tree 'exa --icons --color=always --tree'
    abbr -a -- ls 'exa --icons --color=always'
    abbr -a -- ll 'exa --icons --color=always -l'
    abbr -a -- cat batcat
    abbr -a -- find fdfind
    abbr -a -- google 'web-search google'
    abbr -a -- htop btm
    abbr -a -- gg gitui
    abbr -a -- hexdump hexyl
    abbr -a -- vim nvim
    abbr -a -- tcode micro
    abbr -a -- code liteXL
    abbr -a -- editconf 'nano /home/SETUPTHEUSERNAME/.config/fish/config.fish'
    abbr -a -- ps procs
    abbr -a -- history _atuin_search
    abbr -a -- nnn nnn -d -H -i
end
