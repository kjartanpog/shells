{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.python = nixpkgs.legacyPackages.x86_64-linux.mkShell {
      buildInputs = [nixpkgs.legacyPackages.x86_64-linux.python3];
    };
  };
}
