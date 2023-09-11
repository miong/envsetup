if status is-interactive
    # Commands to run in interactive sessions can go here
    
    # Init commands
    zoxide init fish | source
    set -gx ATUIN_NOBIND "true"
    atuin init fish | source
    fzf_configure_bindings --history=


    # Bindings
    bind \cr _atuin_search
    bind -M insert \cr _atuin_search
    bind \cn 'fuck; sleep 1; commandline -f repaint'  

    #Alias
    alias bat="batcat"

    #Abbreviations
    abbr -a -- cp xcp
    abbr -a -- cd z
    abbr -a -- tree 'eza --icons --color=always --tree'
    abbr -a -- ls 'eza --icons --color=always --group-directories-first'
    abbr -a -- ll 'eza --icons --color=always -l --group-directories-first --git -h -a'
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
    abbr -a -- fk fuck
    abbr -a -- gpush gerrit_push
end
