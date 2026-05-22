{ config, pkgs, ... }:

{

# ============================================
# static ip addresses

networking.interfaces = {

  eth0 = {
    useDHCP = false;
    ipv4.addresses = [
      {
        address = "192.168.1.60";
        prefixLength = 24;
      }
    ];
  };

wlp0s20f3 = {
    useDHCP = false;
    ipv4.addresses = [
      {
        address = "192.168.1.50";
        prefixLength = 24;
      }
    ];
  };

};

networking.defaultGateway = "192.168.1.1";

networking.nameservers = [ "1.1.1.1" "8.8.8.8" ];


}

