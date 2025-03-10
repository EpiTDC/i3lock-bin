{
  description = "A very basic flake";

  inputs = {
    #nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.11";
    #nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs.url = "flake:nixpkgs";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.i3lock_epitdc = import ./i3lock.nix {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        system = "x86_64-linux";
        };

    packages.x86_64-linux.default = self.packages.x86_64-linux.i3lock_epitdc;

  };
}
