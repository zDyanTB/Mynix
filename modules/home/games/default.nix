{ pkgs, pkgs-unstable, ... }:
{

  home.packages = (with pkgs; [
    protonup-qt
    heroic
    adwsteamgtk # Theme for steam
    # steam-rom-manager # Emulator on steam
    # steamtinkerlaunch 
    wineWowPackages.stagingFull # Don't change!!!, wayland version is broken
    mesa
    # mangohud
    xivlauncher
    sunshine
    # lutris
    # moonlight-qt
    # prismlauncher
    # jdk21

    # emulators -----------------------
    # emulationstation-de
    # pcsx2           # PS2
    # retroarchFull   # Retro
    # rpcs3           # PS3
    # cemu            # Wii u
    # ryujinx         # Switch
  ]);
  # ++
  # (with pkgs-unstable; [
  #   nexusmods-app
  # ]);
  
}
