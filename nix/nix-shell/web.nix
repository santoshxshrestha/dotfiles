let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { 
    config =  

      { allowUnfree = true; };
    overlays = []; 
  };
in
  pkgs.mkShellNoCC {
    packages = with pkgs; [
      brave
    ];
    GREETING = "Hello, Nix!";
    shellHook = ''
    echo "Welcome to the development environment!"
    echo $GREETING 
    '';
  }

