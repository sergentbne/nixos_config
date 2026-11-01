.PHONY: build-vm 

build-vm:
	nixos-rebuild build-vm --flake .#workstation --impure
