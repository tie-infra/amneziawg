{
  description = "AmneziaWG patches";
  outputs = _: {
    nixosModules = {
      nixos-unstable = ./modules/unstable.nix;
      nixos-2405 = ./modules/2405.nix;
    };
  };
}
