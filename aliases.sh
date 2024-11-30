#!/bin/bash

# ------------------------
# Navigation Aliases
# ------------------------
alias home='cd ~'                      # Shortcut to navigate to home directory
alias ..='cd ..'                       # Go up one directory level

# ------------------------
# System Update and Management Aliases
# ------------------------
alias update='sudo apt-get update && sudo apt-get upgrade -y' # Update and upgrade system packages
alias meminfo='free -m -l -t'          # Display memory information
alias resource='source ~/.zshrc'       # resource the rc file

alias calc='(gnome-calculator >/dev/null 2>&1 &)'          # Opens the GNOME Calculator application.
alias aliases='opensh aliases.sh'
# Open google drive
alias drive='(xdg-open https://drive.google.com/drive/my-drive >/dev/null 2>&1 &)'
# Open whatsapp
alias whatsapp='(xdg-open https://web.whatsapp.com/ >/dev/null 2>&1 &)'
# Open youtube
alias youtube='(xdg-open https://www.youtube.com/ >/dev/null 2>&1 &)'
alias spotify='(nohup spotify > /dev/null 2>&1 &)'
alias chatgpt='(nohup ~/.webcatalog/ChatGPT/ChatGPT > /dev/null 2>&1 &)'
# Open gmail and meet
alias gmail='(xdg-open  https://mail.google.com/mail/u/0/#inbox >/dev/null 2>&1 &)'
alias meet='(xdg-open https://meet.google.com >/dev/null 2>&1 &)'
alias cv='(xdg-open https://docs.google.com/document/d/1TpkGbSZNo5HSIqMyILwLEZrNB2ipco6LJz00DfWeY6o/edit >/dev/null 2>&1 &)'
alias refresh_keys='(gsettings set org.gnome.desktop.peripherals.keyboard repeat false && gsettings set org.gnome.desktop.peripherals.keyboard repeat true >/dev/null 2>&1 &)'


# ------------------------
# Safe and Confirming Operations
# ------------------------
alias rm='rm -I --preserve-root'          # Prompt before every removal
alias mv='mv -i'                          # Prompt before overwriting files
alias cp='cp -i'                          # Prompt before overwriting files
alias ln='ln -i'                          # Prompt before overwriting files
alias tree='tree -C -a -h -F --dirsfirst' # Display a tree-like representation of the file system with color-coded output, showing hidden files and directories first.
alias ports='netstat -tulanp -p'          # Display the list of listening ports and associated processes.
alias bashrc='code ~/.bashrc'             # Open bashrc file
alias zrc='code ~/.zshrc'                 # Open zshrc file

alias בךקשר='clear && xdotool key shift+alt'

# ------------------------
# File and Directory Listings
# ------------------------
alias ll='ls -la'                      # Detailed listing with hidden files
alias ls='eza -lha --icons'

# ------------------------
# Networking and Download Aliases
# ------------------------
alias ping='ping -c 5'                 # Limit ping to 5 packets
alias wget='wget -c'                   # Continue downloading partially downloaded files

# ------------------------
# Colorize Output for Grep Commands
# ------------------------
alias grep='grep --color=auto'         # Colorize grep output
alias egrep='egrep --color=auto'       # Colorize egrep output
alias fgrep='fgrep --color=auto'       # Colorize fgrep output
alias cat='batcat'
alias scan='ncdu'
alias cd='z'
alias top='btop --utf-force'
alias man='tldr'
# ------------------------
# Git Aliases
# ------------------------
git config --global alias.co checkout        # Shortcut for git checkout
git config --global alias.br branch          # Shortcut for git branch
git config --global alias.rmbr 'branch -D'   # Shortcut for git delete branch
git config --global alias.com 'commit -m'    # Shortcut for git commit with message
git config --global alias.s status           # Shortcut for git status
git config --global alias.last 'log -1 HEAD' # Shortcut for last git commit
git config --global pull.rebase true         # for rebase pull request
git config --global core.excludesfile ~/.gitignore

# Function to create directories and optionally navigate into the last one
folder() {
    if [ "$#" -eq 0 ]; then
        echo "Usage: folder <directory1> [directory2 ... directoryN]"
        return 1
    fi

    for dir in "$@"; do
        mkdir -p "$dir"
    done

    if [ "$#" -eq 1 ]; then
        z "$1" || return 0
    fi
}