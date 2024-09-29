{
  disabledModules = [ "system/boot/networkd.nix" ];
  imports = [
    ./networkd/2405.nix
    ./patches.nix
  ];
}
