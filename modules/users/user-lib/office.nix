{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # evince
    # zathura
    # xournalpp
    # libreoffice
    # kmymoney
    # aspell
    # hunspell
    # ispell
    # keepassxc
  ];
}
