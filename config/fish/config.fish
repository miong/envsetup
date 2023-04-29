if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls="lsd"
    alias cat="batcat"
    alias tcode="micro"
    alias find="fdfind"
    zoxide init fish | source
end
