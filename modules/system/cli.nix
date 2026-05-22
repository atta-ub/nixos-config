{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty kitty ghostty
    wget git
    zsh bash tmux ranger
    unzip stow doas
    tree eza bat
    fzf zoxide
    trash-cli xclip
    btop htop gotop
    tldr pandoc
    ripgrep repgrep
    lshw lshw-gui
    fastfetch pfetch
    usbutils pciutils
    ascii-draw cmatrix cowsay
  ];
}
