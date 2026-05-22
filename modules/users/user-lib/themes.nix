{ pkgs, ... }:

{
  home.packages = with pkgs; [
    papirus-icon-theme
    juno-theme
    adwaita-icon-theme
    gnome-themes-extra
    catppuccin-gtk
    kdePackages.qt6ct
  ];
}
