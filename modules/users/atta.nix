{ pkgs, ... }:

{
  users.users.atta = {
    isNormalUser = true;
    description = "atta";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" "plugdev" ];
    packages = with pkgs; [
      kdePackages.kate
      android-tools
    ];

    # Paste public keys here as you generate them on each machine.
    # Generate with: ssh-keygen -t ed25519 -C "atta@<hostname>" -f ~/.ssh/id_ed25519_hosts
    openssh.authorizedKeys.keys = [
      # "ssh-ed25519 AAAA... atta@atlas"
      # "ssh-ed25519 AAAA... atta@nash"
      # "ssh-ed25519 AAAA... atta@olympia"
      # "ssh-ed25519 AAAA... atta@kafka"
    ];
  };

  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    promptInit = ''
      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
    '';
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };


  security.sudo = {
    enable = true;              
    extraConfig = "Defaults pwfeedback";  
  };


}
