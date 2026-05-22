{ ... }:

{
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;
  users.extraGroups.vboxusers.members = [ "atta" ];

  virtualisation.docker.enable = true;
  users.extraGroups.docker.members = [ "atta" ];
}
