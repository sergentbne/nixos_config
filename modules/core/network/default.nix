{ ... }: {
  flake.nixosModules.network = { ... }: {
    networking = {
      networkmanager = {
        enable = true;
        dns = "none";
      };
      nameservers = [
        "1.1.1.1"
        "8.8.8.8"
      ];
      firewall.enable = true;
    };
    services.unbound = {
      enable = true;
    };
    # programs.nm-applet.enable = if config.tabletSupport == true then true else false;

    time.timeZone = "America/Toronto";

    i18n.defaultLocale = "en_CA.UTF-8";
    networking.hostName = "workstation";
    systemd.services.NetworkManager-wait-online.enable = false;
  };
}
