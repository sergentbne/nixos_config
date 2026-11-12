{ inputs, moduleWithSystem, ... }: {
  flake.nixosModules.wezterm = moduleWithSystem (
    {
      self',
      pkgs,
    }:
    {
      environment.systemPackages = [ self'.packages.wezterm ];
    }
  );
  perSystem = { pkgs, ... }: {
    packages.wezterm = inputs.wrappers.wrappers.wezterm.wrap {
      inherit pkgs;
      luaInfo =
        let
          cfgDir = ./wezterm;
        in
        {
          config_dir = "${cfgDir}";
        };

      "wezterm.lua" =
        let
          cfgDir = ./wezterm;
        in
        {
          path = "${cfgDir}/wezterm.lua";
        };
    };
  };
}
