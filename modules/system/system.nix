{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    thunar thunar-volman thunar-vcs-plugin
    gnome-multi-writer
    ntfs3g gparted
    pavucontrol blueman
    brightnessctl
    ncdu
    copyq
    lxappearance
    chromium brave buku
    vim emacs vscode texmaker
    # gvfs mtpfs
    yt-dlp moc vlc mpv
    cheese
    qalculate-gtk
    gnome-calendar
    gnome-calculator


    eloquent
    planify
    diffuse

    evince zathura inkscape xournalpp libreoffice pdftk pdfchain
    kmymoney
    aspell hunspell ispell
    keepassxc
    xdotool

    ticker
    #networkmanagerapplet
    #networkmanager_dmenu
    #pasystray
  ];

  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
    jetbrains-mono
    nerd-fonts.fira-code
  ];
}
