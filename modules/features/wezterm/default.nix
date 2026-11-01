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
          "wezterm.lua".path = "${cfgDir}/wezterm.lua";
          luaInfo.config_dir = "${cfgDir}";
        };
    };
  };
}
