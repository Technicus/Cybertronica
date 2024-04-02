{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs;
  [
    tmux # Terminal multiplexer
    # tmuxp # tmux session manager
    # tmuxifier # Powerful session, window & pane management for Tmux
    # tmux-cssh # SSH to multiple hosts at the same time using tmux
    # tmuxinator # Manage complex tmux sessions easily
    # tmux-xpanes # tmux-based terminal divider
    # tmuxPlugins.fpp # Name: tmuxplugin-fpp-unstableVersion: 2016-03-08📦 Source
    # tmuxPlugins.cpu # Name: tmuxplugin-cpu-unstableVersion: 2023-01-06📦 Source
    # tmuxPlugins.yank # Name: tmuxplugin-yank-unstableVersion: 2021-06-20📦 Source
    # tmuxPlugins.open # Name: tmuxplugin-open-unstableVersion: 2019-12-02📦 Source
    # tmuxPlugins.nord # Name: tmuxplugin-nordVersion: 0.3.0📦 Source
    # tmuxPlugins.jump # Vimium/Easymotion like navigation for tmux
    # tmux-sessionizer # The fastest way to manage projects as tmux sessions
    # tmuxPlugins.plumb # Name: tmuxplugin-plumbVersion: 0.1.1📦 Source
    # tmuxPlugins.ctrlw # Name: tmuxplugin-ctrlwVersion: 0.1.1📦 Source
    # tmux-mem-cpu-load # CPU, RAM, and load monitor for use with tmux
    # tmuxPlugins.tilish # Plugin which makes tmux work and feel like i3wm
    # tmuxPlugins.weather # Shows weather in the status line
    # tmuxPlugins.urlview # Name: tmuxplugin-urlview-unstableVersion: 2016-01-06📦 Source
    # tmuxPlugins.sysstat # Name: tmuxplugin-sysstat-unstableVersion: 2017-12-12📦 Source
    # tmuxPlugins.sidebar # Name: tmuxplugin-sidebar-unstableVersion: 2018-11-30📦 Source
    # tmuxPlugins.logging # Name: tmuxplugin-logging-unstableVersion: 2019-04-19📦 Source
    # tmuxPlugins.gruvbox # Name: tmuxplugin-gruvbox-unstableVersion: 2022-04-19📦 Source
    # tmuxPlugins.fingers # Name: tmuxplugin-fingersVersion: 1.0.1📦 Source
    # tmuxPlugins.dracula # A feature packed Dracula theme for tmux!
    # tmuxPlugins.copycat # Name: tmuxplugin-copycat-unstableVersion: 2020-01-09📦 Source
    # tmuxPlugins.battery # Name: tmuxplugin-battery-unstableVersion: 2019-07-04📦 Source
    # tmuxPlugins.tmux-fzf # Use fzf to manage your tmux work environment!
    # tmuxPlugins.sensible # Name: tmuxplugin-sensible-unstableVersion: 2017-09-05📦 Source
    # tmuxPlugins.fuzzback # Fuzzy search for terminal scrollback
    # tmuxPlugins.extrakto # Fuzzy find your text with fzf instead of selecting it by hand
    # tmuxPlugins.resurrect # Restore tmux environment after system restart
    # tmuxPlugins.net-speed # Name: tmuxplugin-net-speed-unstableVersion: 2018-12-02📦 Source
    # tmuxPlugins.continuum # continuous saving of tmux environment
    # tmuxPlugins.sessionist # Name: tmuxplugin-sessionist-unstableVersion: 2017-12-03📦 Source
    # tmuxPlugins.catppuccin # Soothing pastel theme for Tmux!
    # tmuxPlugins.tmux-thumbs # A lightning fast version of tmux-fingers written in Rust for copy pasting with vimium/vimperator like hints.
    # tmuxPlugins.power-theme # Name: tmuxplugin-power-unstableVersion: 2020-11-18📦 Source
    # tmuxPlugins.pain-control # Name: tmuxplugin-pain-control-unstableVersion: 2020-02-18📦 Source
    # tmuxPlugins.fzf-tmux-url # Name: tmuxplugin-fzf-tmux-url-unstableVersion: 2021-12-27📦 Source
    # tmuxPlugins.copy-toolkit # Various copy-mode tools
    # tmuxPlugins.online-status # Name: tmuxplugin-online-status-unstableVersion: 2018-11-30📦 Source
    # tmuxPlugins.onedark-theme # Name: tmuxplugin-onedark-theme-unstableVersion: 2020-06-07📦 Source
    # tmuxPlugins.mode-indicator # Plugin that displays prompt indicating currently active Tmux mode
    # tmuxPlugins.maildir-counter # Name: tmuxplugin-maildir-counter-unstableVersion: 2016-11-25📦 Source
    # tmuxPlugins.prefix-highlight # Name: tmuxplugin-prefix-highlight-unstableVersion: 2021-03-30📦 Source
    # tmuxPlugins.better-mouse-mode # better mouse support for tmux
    # tmuxPlugins.vim-tmux-navigator # Name: tmuxplugin-vim-tmux-navigator-unstableVersion: 2022-08-21📦 Source
    # tmuxPlugins.vim-tmux-focus-events # Makes FocusGained and FocusLost autocommand events work in vim when using tmux
    # tmuxPlugins.tmux-colors-solarized
  ];
}
