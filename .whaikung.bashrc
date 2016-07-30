function activate {
    if [[ ! $TERM =~ screen ]]; then
        tmux
    fi
}
alias copy="xclip -sel clip"
alias netip="dig +short myip.opendns.com @resolver1.opendns.com"
alias myip="ifconfig wlan0 | awk '{print $2}' | grep -o --max-count=1 '[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*'"
function tmate-share {
    tmate show-messages | tail -n 1 |  awk '{print $NF}' | copy
}
alias python=python3
