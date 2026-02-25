{
  description = "AmneziaWG patches";
  outputs = _: {
    nixosModules = {
      nixos-unstable = ./modules/unstable.nix;
      nixos-2511 = ./modules/2511.nix;
    };
  };
}
