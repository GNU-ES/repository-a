{
  description = "This is a example to test flake";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  inputs.hello.url = "github:GNU-ES/hello";

  outputs = { self, nixpkgs, flake-utils, hello }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        system = "x86_64-linux";
        config = { allowUnfree = true; };
      };

    minimalUtils = with pkgs; [ coreutils
                                which
                                findutils
                                file
                                nixpkgs-fmt
                                neovim
                                nano
                                hello.defaultPackage.${system}
                                ];
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; minimalUtils;
       };
    }
  );

}
