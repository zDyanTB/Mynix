{ ... }:
{

wayland.windowManager.hyprland = {
  extraConfig = "

windowrulev2 = stayfocused, class:^(steam)$
windowrulev2 = idleinhibit fullscreen, class:^(com.usebottles.bottles|Bottles)

windowrule = float, org.kde.polkit-kde-authentication-agent-1
windowrule = float, nm-connection-editor|blueman-manager
windowrule = float, pavucontrol
windowrule = float, nwg-look|qt5ct|mpv
windowrule = float, onedriver|onedriver-launcher
windowrule = float, eog
windowrule = float, zoom
windowrule = float, rofi
windowrule = float, gnome-system-monitor
windowrule = float, yad

#opacity (transparent) #enable as desired
#first value: focused, second:not focused
windowrulev2 = opacity 0.9 0.6, class:^[Rr]ofi)$
windowrulev2 = opacity 0.9 0.6, class:^([Tt]hunar)$
windowrulev2 = opacity 0.8 0.6, class:^(pcmanfm-qt)$
windowrulev2 = opacity 0.9 0.7, class:^(gedit)$
windowrulev2 = opacity 0.9 0.8, class:^(kitty)$
windowrulev2 = opacity 0.9 0.7, class:^(mousepad)$
windowrulev2 = opacity 0.9 0.7, class:^(codium-url-handler)$
windowrulev2 = opacity 0.9 0.7, class:^(yad)$
windowrulev2 = opacity 0.9 0.7, class:^([Aa]udacious)$
windowrulev2 = opacity 0.9 0.7, class:^(Spotify)$
windowrulev2 = opacity 0.9 0.7, class:^(ArmCord)$
windowrulev2 = opacity 0.9 0.7, class:^(steam)$

layerrule = unset, rofi
layerrule = blur, rofi
layerrule = ignorezero, rofi

# Blur wlogout
# Wlogout
layerrule = blur, wlogout
layerrule = blur, class:^(swww)$
#layerrule = blur, (waybar)

layerrule = blur, swaync-control-center
layerrule = blur, swaync-notification-window

layerrule = ignorezero, swaync-control-center
layerrule = ignorezero, swaync-notification-window

layerrule = ignorealpha 0.5, swaync-control-center
layerrule = ignorealpha 0.5, swaync-notification-window

windowrulev2 = bordercolor rgb(EE4B55) rgb(880808), fullscreen:1
windowrulev2 = bordercolor rgb(282737) rgb(1E1D2D), floating:1
#windowrulev2 = opacity 0.8 0.8, pinned:1

# Picture-in-a-Picture (PIP) rules: Oddly, some need re-duplication.  This is because the window for
# PIP changes after on first launch, and will not inherant the rules...
windowrulev2=opacity 0.95 0.75,title:^(Picture-in-Picture)$ # for opacity: [focus num] [bg num]
# Interestingly, the opacity rule above doesn't need the reduplication?
windowrulev2=pin,title:^(Picture-in-Picture)$ 
#windowrulev2=pin,title:^(Firefox)$ 
windowrulev2=float, title:^(Picture-in-Picture)$
#windowrulev2=float, title:^(Firefox)$
windowrulev2=size 25% 25%,title:^(Picture-in-Picture)$ 
#windowrulev2=size 25% 25%,title:^(Firefox)$ 
windowrulev2=move 72% 7%,title:^(Picture-in-Picture)$ 
#windowrulev2=move 72% 7%,title:^(Firefox)$ 

windowrulev2 = opacity 0.0 override 0.0 override,class:^(xwaylandvideobridge)$
windowrulev2 = noanim,class:^(xwaylandvideobridge)$
windowrulev2 = noinitialfocus,class:^(xwaylandvideobridge)$
windowrulev2 = maxsize 1 1,class:^(xwaylandvideobridge)$
windowrulev2 = noblur,class:^(xwaylandvideobridge)$
    ";
  };
}
