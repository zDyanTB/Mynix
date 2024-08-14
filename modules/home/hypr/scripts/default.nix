{ pkgs, ... }:
let

  wallpaper-select = pkgs.writeScriptBin "wallpaper-select" (builtins.readFile ./wallpaperSelect.sh);
  sys-sounds = pkgs.writeScriptBin "sys-sounds" (builtins.readFile ./Sounds.sh);
  refresh = pkgs.writeScriptBin "refresh" (builtins.readFile ./refresh.sh);
  volume-control = pkgs.writeScriptBin "volume-control" (builtins.readFile ./volume_control.sh);
  media-control = pkgs.writeScriptBin "media-control" (builtins.readFile ./media_control.sh);
  clip-manager = pkgs.writeScriptBin "clip-manager" (builtins.readFile ./clipManager.sh);
  change-layout = pkgs.writeScriptBin "change-layout" (builtins.readFile ./changeLayout.sh);
  take-screenshot = pkgs.writeScriptBin "take-screenshot" (builtins.readFile ./screenshot.sh);

in {

  home.packages = with pkgs; [
    wallpaper-select
    sys-sounds
    refresh
    volume-control
    media-control
    clip-manager
    change-layout
    take-screenshot
  ];
}
