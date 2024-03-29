{ pkgs, ... }:
let

  wallpaper-select = pkgs.writeScriptBin "wallpaper-select" (builtins.readFile ./wallpaperSelect.sh);
  toggle-mode = pkgs.writeScriptBin "toggle-mode" (builtins.readFile ./toggle.sh);
  sys-sounds = pkgs.writeScriptBin "sys-sounds" (builtins.readFile ./Sounds.sh);
  refresh = pkgs.writeScriptBin "refresh" (builtins.readFile ./refresh.sh);
  volume-control = pkgs.writeScriptBin "volume-control" (builtins.readFile ./volume_control.sh);
  media-control = pkgs.writeScriptBin "media-control" (builtins.readFile ./media_control.sh);
  waybar-style = pkgs.writeScriptBin "waybar-style" (builtins.readFile ./waybarStyles.sh);
  waybar-layout = pkgs.writeScriptBin "waybar-layout" (builtins.readFile ./waybarLayout.sh);
  waybar-cava = pkgs.writeScriptBin "waybar-cava" (builtins.readFile ./WaybarCava.sh);
  portal-hyprland = pkgs.writeScriptBin "portal-hyprland" (builtins.readFile ./PortalHyprland.sh);
  polkit-nixos = pkgs.writeScriptBin "polkit-nixos" (builtins.readFile ./Polkit-NixOS.sh);
  clip-manager = pkgs.writeScriptBin "clip-manager" (builtins.readFile ./clipManager.sh);
  change-layout = pkgs.writeScriptBin "change-layout" (builtins.readFile ./changeLayout.sh);
  take-screenshot = pkgs.writeScriptBin "take-screenshot" (builtins.readFile ./screenshot.sh);

in {

  home.packages = with pkgs; [
    wallpaper-select
    toggle-mode
    sys-sounds
    refresh
    volume-control
    media-control
    waybar-style
    waybar-layout
    waybar-cava
    portal-hyprland
    polkit-nixos
    clip-manager
    change-layout
    take-screenshot
  ];
}
