#local binary path
PATH=$PATH:$HOME/.local/bin:$(ruby -e 'puts Gem.user_dir')/bin:$HOME/.node/bin:$HOME/.config/composer/vendor/bin:$(go env GOPATH)/bin

export DE="mate"
export QT_QPA_PLATFORMTHEME="qt5ct"

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx &> /dev/null
fi
