{ config, pkgs, ... }:
{
  imports = [
    ./dev.nix
    # ./git.nix
    # ./ssh.nix
    # ./office.nix
    ./communication.nix
    ./themes.nix
  ];

  home.username = "atta";
  home.homeDirectory = "/home/atta";
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    xonsh
    micromamba
  ];

 programs.fish.enable = true;

  xdg.configFile."kwalletrc".text = ''
    [Wallet]
    Enabled=false
    First Use=false
  '';

}

