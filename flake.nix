{
  description = "AmneziaWG patches";
  outputs = _: {
    nixosModules = {
      nixos-unstable = ./modules/unstable.nix;
      nixos-2405 = ./modules/2405.nix;
      nixos-2411 = ./modules/2411.nix;
      nixos-2505 = ./modules/2505.nix;
    };
  };
}
