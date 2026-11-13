{ inputs, moduleWithSystem, ... }: {

  flake.nixosModules.settings = moduleWithSystem (
    {
      pkgs,
    }:
    {
      nix.settings.auto-optimise-store = true;

      # Set your time zone.
      time.timeZone = "America/Toronto";

      # Select internationalisation properties.
      i18n.defaultLocale = "en_CA.UTF-8";

      virtualisation.vmVariant = {
        # following configuration is added only when building VM with build-vm
        virtualisation = {
          memorySize = 2048; # Use 2048MiB memory.
          cores = 3;
        };
      };

      nixpkgs.config.allowUnfree = true;

      system.stateVersion = "26.05";
    }
  );
}
