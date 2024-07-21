{ config, ... }:
{
  programs.wlogout = {
    enable = true;
    style = "./nova.css";
    layout = [
      {
        "label" = "shutdown";
        "action" = "systemctl poweroff";
        "text" = "Shutdown";
        "keybind" = "s";
      }
      {
        "label" = "reboot";
        "action" = "systemctl reboot";
        "text" = "Reboot";
        "keybind" = "r";
      }
      {
        "label" = "logout";
        "action" = "loginctl kill-session $XDG_SESSION_ID";
        "text" = "Logout";
        "keybind" = "e";
      }
      {
        "label" = "hibernate";
        "action" = "swaylock -f && systemctl hibernate";
        "text" = "Hibernate";
        "keybind" = "h";
      }
      {
        "label" = "lock";
        "action" = "hyprlock";
        "text" = "Lock";
        "keybind" = "l";
      }

    ];
  };

  xdg.configFile."wlogout/icons" = {
    source = config.lib.file.mkOutOfStoreSymlink ./icons;
    recursive = true;
  };
}
