#!/bin/bash

THEME=$1

if [ "$THEME" = "green" ]; then
    # Swap window borders, waybar styles, wofi themes, and mako themes
    ln -sf /home/amy/.config/sway/themes/green.conf /home/amy/.config/sway/current_theme.conf
    ln -sf /home/amy/.config/waybar/themes/green.css /home/amy/.config/waybar/current_theme.css
    ln -sf /home/amy/.config/wofi/themes/green.css /home/amy/.config/wofi/current-theme.css
    ln -sf /home/amy/.config/mako/themes/green.conf /home/amy/.config/mako/config
    killall mako

elif [ "$THEME" = "blue" ]; then
    # Swap window borders, waybar styles, wofi themes, and mako themes
    ln -sf /home/amy/.config/sway/themes/blue.conf /home/amy/.config/sway/current_theme.conf
    ln -sf /home/amy/.config/waybar/themes/blue.css /home/amy/.config/waybar/current_theme.css
    ln -sf /home/amy/.config/wofi/themes/blue.css /home/amy/.config/wofi/current-theme.css
    ln -sf /home/amy/.config/mako/themes/blue.conf /home/amy/.config/mako/config
    killall mako
    
elif [ "$THEME" = "strawberry" ]; then
    # Swap window borders, waybar styles, wofi themes, and mako themes
    ln -sf /home/amy/.config/sway/themes/strawberry.conf /home/amy/.config/sway/current_theme.conf
    ln -sf /home/amy/.config/waybar/themes/strawberry.css /home/amy/.config/waybar/current_theme.css
    ln -sf /home/amy/.config/wofi/themes/strawberry.css /home/amy/.config/wofi/current-theme.css
    ln -sf /home/amy/.config/mako/themes/strawberry.conf /home/amy/.config/mako/config
    killall mako

elif [ "$THEME" = "venom" ]; then
    # Swap window borders, waybar styles, wofi themes, and mako themes
    ln -sf /home/amy/.config/sway/themes/venom.conf /home/amy/.config/sway/current_theme.conf
    ln -sf /home/amy/.config/waybar/themes/venom.css /home/amy/.config/waybar/current_theme.css
    ln -sf /home/amy/.config/wofi/themes/venom.css /home/amy/.config/wofi/current-theme.css
    ln -sf /home/amy/.config/mako/themes/venom.conf /home/amy/.config/mako/config
    killall mako

elif [ "$THEME" = "kangaroo" ]; then
    # Swap window borders, waybar styles, wofi themes, and mako themes
    ln -sf /home/amy/.config/sway/themes/kangaroo.conf /home/amy/.config/sway/current_theme.conf
    ln -sf /home/amy/.config/waybar/themes/kangaroo.css /home/amy/.config/waybar/current_theme.css
    ln -sf /home/amy/.config/wofi/themes/kangaroo.css /home/amy/.config/wofi/current-theme.css
    ln -sf /home/amy/.config/mako/themes/kangaroo.conf /home/amy/.config/mako/config
    killall mako

elif [ "$THEME" = "nano" ]; then
    # Swap window borders, waybar styles, wofi themes, and mako themes
    ln -sf /home/amy/.config/sway/themes/nano.conf /home/amy/.config/sway/current_theme.conf
    ln -sf /home/amy/.config/waybar/themes/nano.css /home/amy/.config/waybar/current_theme.css
    ln -sf /home/amy/.config/wofi/themes/nano.css /home/amy/.config/wofi/current-theme.css
    ln -sf /home/amy/.config/mako/themes/nano.conf /home/amy/.config/mako/config
    killall mako

elif [ "$THEME" = "hay" ]; then
    # Swap window borders, waybar styles, wofi themes, and mako themes
    ln -sf /home/amy/.config/sway/themes/hay.conf /home/amy/.config/sway/current_theme.conf
    ln -sf /home/amy/.config/waybar/themes/hay.css /home/amy/.config/waybar/current_theme.css
    ln -sf /home/amy/.config/wofi/themes/hay.css /home/amy/.config/wofi/current-theme.css
    ln -sf /home/amy/.config/mako/themes/hay.conf /home/amy/.config/mako/config
    killall mako

elif [ "$THEME" = "snowy" ]; then
    # Swap window borders, waybar styles, wofi themes, and mako themes
    ln -sf /home/amy/.config/sway/themes/snowy.conf /home/amy/.config/sway/current_theme.conf
    ln -sf /home/amy/.config/waybar/themes/snowy.css /home/amy/.config/waybar/current_theme.css
    ln -sf /home/amy/.config/wofi/themes/snowy.css /home/amy/.config/wofi/current-theme.css
    ln -sf /home/amy/.config/mako/themes/snowy.conf /home/amy/.config/mako/config
    killall mako


else
    notify-send "Uguu~ Invalid theme choice !! 🥺👉👈"
    exit 1
fi

# Instant Reload Sparkles !!! ✨
swaymsg reload
killall -SIGUSR2 waybar

if [ "$THEME" = "green" ]; then
    swaymsg "output * bg /home/amy/Pictures/Wallpapers/marsh.jpg fill"
elif [ "$THEME" = "blue" ]; then
    swaymsg "output * bg /home/amy/Pictures/Wallpapers/ocean.jpg fill"
elif [ "$THEME" = "strawberry" ]; then
    swaymsg "output * bg /home/amy/Pictures/Wallpapers/strawb.jpg fill"
elif [ "$THEME" = "venom" ]; then
    swaymsg "output * bg /home/amy/Pictures/Wallpapers/venom.jpg fill"
elif [ "$THEME" = "kangaroo" ]; then
    swaymsg "output * bg /home/amy/Pictures/Wallpapers/kangaroo.jpg fill"
elif [ "$THEME" = "nano" ]; then
    swaymsg "output * bg /home/amy/Pictures/Wallpapers/nano.webp tile"
elif [ "$THEME" = "hay" ]; then
    swaymsg "output * bg #0f172a solid_color"
elif [ "$THEME" = "snowy" ]; then
    swaymsg "output * bg #4A3E69 solid_color"
fi
