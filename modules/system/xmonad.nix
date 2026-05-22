{ pkgs, ... }:

{
  services.xserver.windowManager.xmonad = {
    enable = true;
    extraPackages = hpkgs: [
      hpkgs.xmonad
      hpkgs.xmonad-contrib
      hpkgs.xmonad-extras
    ];
  };

  # Wallpaper on all monitors
  services.xserver.displayManager.sessionCommands = ''
    export PATH=$PATH:/run/current-system/sw/bin:$HOME/.nix-profile/bin
    ${pkgs.feh}/bin/feh --bg-fill ${../wallpapers/mv.jpg}
  '';

  environment.systemPackages = with pkgs; [
    rofi
    dmenu
    dunst
    picom
    nitrogen
    arandr
    xmobar
    feh
    trayer
    betterlockscreen
    scrot
    flameshot
    gnome-screenshot

  ];
}
