set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# ===== ENV VARS ===== #
# -Ux = Universal export
set -Ux EDITOR helix

# ===== STARSHIP.RS ===== #
starship init fish | source

# ===== CUSTOM ALIASES ===== #
alias ls='eza --icons'
alias hx='helix'
alias cat='bat -p'
