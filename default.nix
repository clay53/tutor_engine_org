let
    pkgs = import <nixpkgs> {};
in
pkgs.stdenv.mkDerivation {
    pname = "tutor_engine_org";
    version = "wc1";
    src = ./.;

    buildPhase = ''
        cp "$src/www" -r "$out"
    '';
}
