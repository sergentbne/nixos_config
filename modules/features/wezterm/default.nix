{ ... }: {
  description = "serge's own Wezterm configuration";
  perSystem = { pkgs, inputs, ... }: {
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
