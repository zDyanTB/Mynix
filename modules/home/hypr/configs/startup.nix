{ ... }:
{
wayland.windowManager.hyprland = {
  extraConfig = "

$wallDIR=$HOME/Pictures/wallpapers

# wallpaper stuff / More wallpaper options below
exec-once = swww query || swww init

# Startup
exec-once = dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
exec-once = systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP

# startup apps
exec-once = waybar &
exec-once = nm-applet --indicator &
exec-once = swaync &
exec-once = hypridle &

#clipboard manager
exec-once = wl-paste --type text --watch cliphist store 
exec-once = wl-paste --type image --watch cliphist store

    ";
  };
}
