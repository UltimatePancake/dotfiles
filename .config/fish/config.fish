if status --is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end

set ALSA_CARD 0

set -x EDITOR vim

set -x BROWSER chromium

set -x GOPATH ~/playspace/go

set -x TERM rxvt-unicode-256color

# PATH
set -U fish_user_paths ~/.local/bin $GOPATH/bin ~/.rbenv/shims

# VI MODE
fish_vi_key_bindings
