#! /bin/bash

# Cat template files as one large block and is then copied to clipboard
#
#
SWAY=/home/amy/.config/sway/themes/template.conf
WAYBAR=/home/amy/.config/waybar/themes/template.css
WOFI=/home/amy/.config/wofi/themes/template.css
MAKO=/home/amy/.config/mako/themes/template.conf

cat $SWAY $WAYBAR $WOFI $MAKO | wl-copy

echo 'Copied templates to clipboard'
