{
  description = "Multihost and multi user modular configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    claude-code.url = "github:sadjow/claude-code-nix";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # agenix: declarative secret management encrypted with age (SSH keys).
    # Secrets are stored as *.age files in secrets/ and are safe to commit.
    # Each host decrypts only the secrets it's listed for, using its SSH host key.
    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs"; # reuse our nixpkgs to avoid duplicate deps
    };
  };

  outputs = { self, nixpkgs, home-manager, agenix, claude-code, ... }:
  let
    mkHost = { hostname, users ? [] }: nixpkgs.lib.nixosSystem {
      modules = [
        { nixpkgs.overlays = [ claude-code.overlays.default ]; }
        ./modules/system
        ./modules/hosts/${hostname}.nix
        # Enables the `age.secrets.*` NixOS options and the agenix activation script.
        # At boot, secrets are decrypted to /run/agenix/ using the host's SSH host key.
        agenix.nixosModules.default
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
        }
      ]
      ++ map (user: ./modules/users/${user}.nix) users
      ++ map (user: {
        home-manager.users.${user} = import ./modules/users/user-lib/${user}-home.nix;
      }) users;
    };
  in
  {
    nixosConfigurations = {
      atlas = mkHost {
        hostname = "atlas";
        users = [ "atta" ];
      };
      nash = mkHost {
        hostname = "nash";
        users = [ "atta" ];
      };
      olympia = mkHost {
        hostname = "olympia";
        users = [ "atta" ];
      };
      kafka = mkHost {
        hostname = "kafka";
        users = [ "atta" ];
      };
    };
  };
}
