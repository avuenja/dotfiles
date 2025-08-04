#!/usr/bin/fish

# Shizukana Fish shell theme
# Based on the Shizukana color palette by avuenja

# Color definitions using your palette
set -l foreground f3ded1 normal
set -l background 1f262c normal
set -l selection 485a75 normal
set -l comment 72905a normal
set -l red c88380 red
set -l orange b49b82 brred
set -l yellow cdb6a3 yellow
set -l green 59754d green
set -l purple 9c6465 magenta
set -l cyan 88b7d0 cyan
set -l blue 6d91af blue
set -l pink ecbdc7 brmagenta

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $blue
set -g fish_color_keyword $purple
set -g fish_color_quote $green
set -g fish_color_redirection $cyan
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $foreground
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $yellow
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection

# Directory and file colors
set -g fish_color_cwd $blue
set -g fish_color_cwd_root $red
set -g fish_color_host $cyan
set -g fish_color_user $green
set -g fish_color_valid_path --underline

# History and search
set -g fish_color_history_current $pink
set -g fish_color_match $yellow

# Git prompt colors (if using git integration)
set -g __fish_git_prompt_color_branch $purple
set -g __fish_git_prompt_color_dirtystate $red
set -g __fish_git_prompt_color_stagedstate $yellow
set -g __fish_git_prompt_color_untrackedfiles $orange
set -g __fish_git_prompt_color_cleanstate $green

# Additional customization
set -g fish_color_cancel $red
set -g fish_color_option $cyan

# Enable colored output for common commands
if type -q ls
    alias ls 'ls --color=auto'
end

if type -q grep
    alias grep 'grep --color=auto'
end

if type -q diff
    alias diff 'diff --color=auto'
end

# Welcome message (optional)
function fish_greeting
    echo "🌸 Shizukana theme loaded"
end
