{ config, pkgs, ... }:

{
  # imports = [
  #   ./virt.nix
  # ];

  environment.systemPackages = with pkgs; [
    # obs-studio
    # kdePackages.kdenlive
    # darktable
    # gimp
    # shotwell
    # shutter
    # qutebrowser
    texliveFull
    # veracrypt			# cross plateform encryption tool
  ];


services.nextcloud = {
  enable = true;
  package = pkgs.nextcloud33;

  hostName = "192.172.1.153";

  config = {
    dbtype = "pgsql";
    adminuser = "admin";
    adminpassFile = "/var/lib/nextcloud/admin-pass";
  };

  database.createLocally = true;

  settings = {
    trusted_domains = [ "localhost" "127.0.0.1" "192.172.1.153" ];
  };
};


networking.firewall.allowedTCPPorts = [ 22 80 443 ];

services.nginx.enable = true;
services.postgresql.enable = true;



services.gvfs.enable = true;



  services.avahi = {
    enable = true;
    nssmdns4 = true;
    nssmdns6 = true;
    openFirewall = true;
  };

  services.printing = {
    enable = true;
    drivers = with pkgs; [
      cups-filters
    ];
  };


}

