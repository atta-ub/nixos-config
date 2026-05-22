{ pkgs, ... }:

{
  home.packages = with pkgs; [
    teams-for-linux
    zoom-us
    telegram-desktop
    dropbox
    tdlib
    irssi
    discord
    slack
  ];
}
