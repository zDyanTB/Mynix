{ ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = '' 

      monitor=,preferred,auto,auto
      # starup apps
      exec-once = swww query || swww init
      exec-once = dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
      exec-once = systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
      exec-once = waybar &
      exec-once = nm-applet --indicator &
      exec-once = swaync &

      dwindle {
  pseudotile = yes
  preserve_split = yes
  special_scale_factor = 0.8
}

master {
  new_is_master=1
  new_on_top=1
  mfact = 0.5
}

general {
  sensitivity=1.00
  apply_sens_to_raw=1
  gaps_in = 4
  gaps_out = 4
  border_size = 2
  resize_on_border = true
   
  col.active_border = $color6 
  col.inactive_border = $backgroundCol

  layout = dwindle
}

group {
  col.border_active = $color6

	groupbar {
	col.active = $color6
  }
}

decoration {
  rounding = 8
         
  active_opacity = 1.0
  inactive_opacity = 0.8
  fullscreen_opacity = 1.0

  dim_inactive = true
  dim_strength = 0.3

  drop_shadow=true
  shadow_range= 10
  shadow_render_power = 2
  col.shadow = 0 
  col.shadow_inactive = $backgroundCol 

  blur {
  enabled = true	
  size = 4
  passes = 3
  ignore_opacity = true
  new_optimizations = true
  }
}
    
animations {
  enabled = yes

  bezier = myBezier, 0.05, 0.9, 0.1, 1.05
  bezier = linear, 0.0, 0.0, 1.0, 1.0
  bezier = wind, 0.05, 0.9, 0.1, 1.05
  bezier = winIn, 0.1, 1.1, 0.1, 1.1
  bezier = winOut, 0.3, -0.3, 0, 1
  bezier = slow, 0, 0.85, 0.3, 1
  bezier = overshot, 0.7, 0.6, 0.1, 1.1
  bezier = bounce, 1.1, 1.6, 0.1, 0.85
  bezier = sligshot, 1, -1, 0.15, 1.25
  bezier = nice, 0, 6.9, 0.5, -4.20
  
  animation = windowsIn, 1, 5, winIn, slide
  animation = windowsOut, 1, 5, winOut, slide
  animation = windowsMove, 1, 5, wind, slide
  animation = border, 1, 10, linear
  animation = borderangle, 1, 180, linear, loop #used by rainbow borders and rotating colors
  animation = fade, 1, 5, overshot
  animation = workspaces, 1, 5, wind
  animation = windows, 1, 5, bounce, slide
}

input {
  kb_layout=us
  kb_variant=
  kb_model=
  kb_options=grp:alt_shift_toggle
  kb_rules=
  repeat_rate=50
  repeat_delay=300
  numlock_by_default=1
  left_handed=0
  follow_mouse=1
  float_switch_override_focus=0

  touchpad {
    disable_while_typing=1
    natural_scroll=0 
    clickfinger_behavior=0
    middle_button_emulation=1
    tap-to-click=1
    drag_lock=0
          }
}

gestures {
  workspace_swipe=1
  workspace_swipe_fingers=3
  workspace_swipe_distance=400
  workspace_swipe_invert=1
  workspace_swipe_min_speed_to_force=30
  workspace_swipe_cancel_ratio=0.5
  workspace_swipe_create_new=1 
  workspace_swipe_forever=1
}

misc {
  disable_hyprland_logo = true
  disable_splash_rendering = true
  mouse_move_enables_dpms = true
  vrr = 2
  enable_swallow = true
  no_direct_scanout = true #for fullscreen games
  focus_on_activate = false
  swallow_regex = ^(kitty)$
  #disable_autoreload = true
}

binds {
  workspace_back_and_forth=1
  allow_workspace_cycles=1
  pass_mouse_when_bound=0
}

#Could help when scaling and not pixelating
xwayland {
    force_zero_scaling = true
}
    '';
  };
}
