{ pkgs, ... }:

{

  services.xserver.enable = true;

  services.displayManager.sddm = {
    enable = true;
    theme = "breeze";
    settings.Theme = {
      Background = "${../wallpapers/login.jpg}";
    };
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.desktopManager.plasma6.enable = true;

  environment.sessionVariables = {
    QT_QPA_PLATFORMTHEME = "qt6ct";
  };

environment.systemPackages = with pkgs; [
  kdePackages.qtstyleplugin-kvantum
];

}
