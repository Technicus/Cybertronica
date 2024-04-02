{ config, pkgs, ... }: 
{
  environment.systemPackages = with pkgs; 
  [  
    zsh # The Z shell
     zsh-z # Jump quickly to directories that you have visited frequently in the past, or recently. Jump back to a specific directory, without doing `cd ../../..`
     zsh-edit # A set of powerful extensions to the Zsh command line editor
     zsh-abbr # The zsh manager for auto-expanding abbreviations, inspired by fish shell
     zsh-defer # Deferred execution of zsh commands
     zsh-prezto # The configuration framework for Zsh
     zsh-forgit # A utility tool powered by fzf for using git interactively
     zsh-f-sy-h # Feature-rich Syntax Highlighting for Zsh
     zsh-vi-mode # A better and friendly vi(vim) mode plugin for ZSH.
     zsh-history # A CLI to provide enhanced history for your ZSH shell
     zsh-fzf-tab # Replace zsh's default completion selection menu with fzf!
    # zsh-autoenv # Automatically sources whitelisted .autoenv.zsh files
    # zsh-autopair # A plugin that auto-closes, deletes and skips over matching delimiters in zsh intelligently
    # zsh-nix-shell # zsh plugin that lets you use zsh in nix-shell shell
    # zsh-clipboard # Ohmyzsh plugin that integrates kill-ring with system clipboard
    # zsh-git-prompt # Informative git prompt for zsh
    # zsh-completions # Additional completion definitions for zsh
     zsh-powerlevel9k # A beautiful theme for zsh
    # zsh-command-time # Plugin that output time: xx after long commands
    # zsh-autocomplete # Real-time type-ahead completion for Zsh. Asynchronous find-as-you-type autocompletion
    # zsh-powerlevel10k # A fast reimplementation of Powerlevel9k ZSH theme
    # zsh-you-should-use # ZSH plugin that reminds you to use existing aliases for commands you just typed
    # zsh-history-to-fish # Bring your ZSH history to Fish shell
    # zsh-autosuggestions # Fish shell autosuggestions for Zsh
    # zsh-system-clipboard # A plugin that adds key bindings support for ZLE (Zsh Line Editor) clipboard operations for vi emulation keymaps
    # zsh-navigation-tools # Curses-based tools for ZSH
    # zsh-fzf-history-search # A simple zsh plugin that replaces Ctrl+R with an fzf-driven select which includes date/times
    # zsh-syntax-highlighting # Fish shell like syntax highlighting for Zsh
    zsh-better-npm-completion # Better completion for npm
    # zsh-history-substring-search # Fish shell history-substring-search for Zsh
     zsh-fast-syntax-highlighting # Syntax-highlighting for Zshell
     zsh-history-search-multi-word # Multi-word, syntax highlighted history searching for Zsh
    # haskellPackages.zsh-battery # Ascii bars representing battery status
    grml-zsh-config # grml's zsh setup
     spaceship-prompt # Zsh prompt for Astronauts
    # antigen # The plugin manager for zsh
    # agkozak-zsh-prompt # A fast, asynchronous Zsh prompt
    # zinit # Flexible zsh plugin manager
    # oh-my-zsh # A framework for managing your zsh configuration
     nix-zsh-completions # ZSH completions for Nix, NixOS, and NixOps
    # fzf-zsh # wrap fzf to use in oh-my-zsh
    # zplug # A next-generation plugin manager for zsh
    # pure-prompt # Pretty, minimal and fast ZSH prompt
    # gradle-completion # Gradle tab completion for bash and zsh
    # deer # Ranger-like file navigation for zsh
    # any-nix-shell # fish and zsh support for nix-shell
    # zi # A Swiss Army Knife for Zsh - Unix Shell
    # powerline-go # A Powerline like prompt for Bash, ZSH and Fish
    # zimfw # The Zsh configuration framework with blazing speed and modular extensions
  ];
}
