{ ... }:
{
wayland.windowManager.hyprland = {
  extraConfig = "
$scriptsDir = $HOME/.config/hypr/scripts
$UserScripts = $HOME/.config/hypr/UserScripts

$wallDIR=$HOME/Pictures/wallpapers

# wallpaper stuff / More wallpaper options below
exec-once = swww query || swww init

# Startup
exec-once = dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
exec-once = systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP

# Polkit (Polkit Gnome / KDE)
exec-once = $scriptsDir/Polkit.sh

# starup apps
exec-once = waybar &
exec-once = nm-applet --indicator &
exec-once = swaync &
#exec-once = blueman-applet & 
#exec-once = rog-control-center &


#clipboard manager
exec-once = wl-paste --type text --watch cliphist store 
exec-once = wl-paste --type image --watch cliphist store

#gnome polkit for nixos
#exec-once = $scriptsDir/Polkit-NixOS.sh

# xdg-desktop-portal-hyprland (should be auto starting. However, you can force to start)
#exec-once = $scriptsDir/PortalHyprland.sh

    ";
  };
}
