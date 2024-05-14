#!/usr/bin/env bash
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# title      Tokyo Night                                              +
# version    1.0.0                                                    +
# repository https://github.com/logico-dev/tokyo-night-tmux           +
# author     Lógico                                                   +
# email      hi@logico.com.ar                                         +
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

RESET="#[fg=brightwhite,bg=#15161e,nobold,noitalics,nounderscore,nodim]"
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LIME='#a3e635'
YELLOW='#eab308'

tmux set -g status-left-length 80
tmux set -g status-right-length 150

# Highlight colors
tmux set -g mode-style "fg=$SKY,bg=#2A2F41"

tmux set -g message-style "bg=$YELLOW,fg=#2A2F41"
tmux set -g message-command-style "fg=$YELLOW,bg=#2A2F41"

tmux set -g pane-border-style "fg=$LIME"
tmux set -g pane-active-border-style "fg=$YELLOW"

tmux set -g status-style bg="#1A1B26"

SCRIPTS_PATH="$CURRENT_DIR/src"
TMUX_VARS="$(tmux show -g)"
PANE_BASE="$(echo "$TMUX_VARS" | grep pane-base-index | cut -d" " -f2 | bc)"

default_window_id_style="none"
default_pane_id_style="hsquare"
default_zoom_id_style="dsquare"

window_id_style="$(echo "$TMUX_VARS" | grep '@tokyo-night-tmux_window_id_style' | cut -d" " -f2)"
pane_id_style="$(echo "$TMUX_VARS" | grep '@tokyo-night-tmux_pane_id_style' | cut -d" " -f2)"
zoom_id_style="$(echo "$TMUX_VARS" | grep '@tokyo-night-tmux_zoom_id_style' | cut -d" " -f2)"
window_id_style="${window_id_style:-$default_window_id_style}"
pane_id_style="${pane_id_style:-$default_pane_id_style}"
zoom_id_style="${zoom_id_style:-$default_zoom_id_style}"

git_status="#($SCRIPTS_PATH/git-status.sh #{pane_current_path})"
session_colorizer="#($SCRIPTS_PATH/session.sh #S)"
wb_git_status="#($SCRIPTS_PATH/wb-git-status.sh #{pane_current_path} &)"
window_number="#($SCRIPTS_PATH/custom-number.sh #I $window_id_style)"
custom_pane="#($SCRIPTS_PATH/custom-number.sh #P $pane_id_style)"
zoom_number="#($SCRIPTS_PATH/custom-number.sh #P $zoom_id_style)"

#+--- Bars LEFT ---+
# Session name
tmux set -g status-left "$session_colorizer $RESET"

#+--- Windows ---+
# Focus
tmux set -g window-status-current-format "#[fg=white,bg=#343434]  $window_number #[bold,nodim]#W  "
# Unfocused
tmux set -g window-status-format "#[fg=gray,bg=default,none,dim]  $window_number #W  "

#+--- Bars RIGHT ---+
tmux set -g status-right "#[fg=white,bg=#24283B]  %Y-%m-%d #[]❬ %H:%M $git_status"
tmux set -g window-status-separator ""
