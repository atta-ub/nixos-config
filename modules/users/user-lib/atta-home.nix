{ config, pkgs, ... }:
{
  imports = [
    ./dev.nix
    ./communication.nix
    ./themes.nix
  ];

  home.username = "atta";
  home.homeDirectory = "/home/atta";
  home.stateVersion = "25.11";

}

