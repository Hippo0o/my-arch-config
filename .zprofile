#local binary path
PATH=$PATH:$HOME/.local/bin:$(ruby -e 'puts Gem.user_dir')/bin:$HOME/.local/lib/node_modules/bin:$HOME/.config/composer/vendor/bin

export DE="mate"
export QT_QPA_PLATFORMTHEME="qt5ct"

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
