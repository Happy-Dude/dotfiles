"slimv settings

let g:slimv_preferred = 'sbcl'                  " Prefer sbcl implementation
let g:slimv_repl_syntax = 1                     " Enable syntax highlighting in Slimv REPL buffer
let g:slimv_swank_cmd = '! $HOME/.vim/pack/plugged/opt/slimv/ftplugin/iterm.applescript $(which sbcl) --load "$HOME/dotfiles/emacs/.config/emacs/plugins/slime/start-swank.lisp"'
"let g:slimv_swank_cmd = '! xterm -e $(which sbcl) --load "$HOME/dotfiles/emacs/.config/emacs/plugins/slime/start-swank.lisp" &'
