if status is-interactive
    # Commands to run in interactive sessions can go here
    direnv hook fish | source
    source ~/.asdf/asdf.fish
    # Set up fzf key bindings
    fzf --fish | source
end
