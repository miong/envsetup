function fish_user_key_bindings
    bind '&' _logic_on_ampersand
    bind '|' _logic_on_pipe
end

fzf_key_bindings
fzf_configure_bindings --history=
bind \ch _atuin_search
bind \cr _atuin_search
bind -M insert \cr _atuin_search
