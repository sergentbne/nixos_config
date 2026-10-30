-- glue code for nix to work well with this bad boy
local dir = require('nix-info').config_dir
package.path = dir .. '/?.lua;' .. dir .. '/?/init.lua;' .. package.path

-- Pull in the wezterm API
local wezterm = require("wezterm")
-- This will hold the configuration.
local config = wezterm.config_builder()
local keys = require("keys")
local aestetics = require("aestetics")
local qol = require("qol")

qol.quality(config)
aestetics.beautify(config)
config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = keys
return config
