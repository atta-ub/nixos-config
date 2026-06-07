{ ... }:

{

  services.xserver.enable = true;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = false;
    settings.Theme = {
      Background = "${../wallpapers/login.jpg}";
    };
  };

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

}
