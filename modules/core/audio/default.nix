{ inputs, moduleWithSystem, ... }: {

  flake.nixosModules.gnome = moduleWithSystem (
    {
      pkgs,
    }:
    {
      # Enable sound with pipewire.
      services.pulseaudio.enable = false;
      security.rtkit.enable = true;
      services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        # Use the WirePlumber session manager
        wireplumber.enable = true;
        # If you want to use JACK applications, uncomment this
        #jack.enable = true;
      };
    }
  );
}
