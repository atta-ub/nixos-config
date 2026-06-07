{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    thunar thunar-volman thunar-vcs-plugin
    
    ntfs3g gparted
    pavucontrol blueman
    brightnessctl
 
    copyq
    lxappearance
    chromium brave buku
    vim emacs
   
    texmaker
  
    yt-dlp moc vlc
    cheese

    evince zathura
    inkscape xournalpp libreoffice pdftk

    aspell hunspell ispell
    keepassxc
    xdotool

    ticker
  ];

  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
    jetbrains-mono
    nerd-fonts.fira-code
  ];
}
