let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { 
    config = {}; 
    overlays = []; 
  };
in
pkgs.mkShellNoCC {
  packages = with pkgs; [
    nodejs
    python3
    git
  ];
  GREETING = "Hello, Nix!";
  shellHook = ''
    echo "Welcome to the development environment!"
    echo $GREETING 
  '';
}

