if status is-interactive
    # Commands to run in interactive sessions can go here
    direnv hook fish | source
    # ASDF v0.16.0 configuration
    fish_add_path "$HOME/.local/bin"
    if test -z $ASDF_DATA_DIR
        set _asdf_shims "$HOME/.asdf/shims"
    else
        set _asdf_shims "$ASDF_DATA_DIR/shims"
    end
    fish_add_path $_asdf_shims
    # Set up fzf key bindings
    fzf --fish | source

    # Gemini API Key for Avante.nvim (Scoped)
    set -gx AVANTE_GEMINI_API_KEY "AIzaSyDeMSfFnrKURnccuQfu5lkrQ0YMW6kHUjs"
end
