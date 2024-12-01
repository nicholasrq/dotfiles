#!/bin/zsh

AEROSPACE="/run/current-system/sw/bin/aerospace"

update() {
  if [ "$SENDER" = "space_change" ]; then
    source "$CONFIG_DIR/colors.sh"
    COLOR=$SURFACE2
    if [ "$SELECTED" = "true" ]; then
      COLOR=$ACTIVE_BG
    fi

    sketchybar --set space.$($AEROSPACE list-workspaces --focused) \
      icon.highlight=true \
      label.highlight=true
  fi
}

set_space_label() {
  sketchybar --set $NAME icon="$@"
}

mouse_clicked() {
  if [ "$BUTTON" = "right" ]; then
    echo ''
  else
    $AEROSPACE workspace ${NAME#*.}
  fi
}

# echo plugin_space.sh $SENDER >> ~/aaaa
case "$SENDER" in
"mouse.clicked")
  mouse_clicked
  ;;
*)
  update
  ;;
esac
