{ config, pkgs, ... }:

{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./host-lib/nash-with-kafka.nix
  ];

  networking.hostName = "kafka";
  system.stateVersion = "25.11";

  environment.systemPackages = with pkgs; [
    ffmpeg
  ];

  networking.extraHosts = ''
    # 127.0.0.1 youtube.com www.youtube.com
    127.0.0.1 www.bbc.com bbc.com
    127.0.0.1 www.reddit.com reddit.com
  '';
}
