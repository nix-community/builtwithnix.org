{ pkgs ? import ./nixpkgs.nix }:
with pkgs;
stdenv.mkDerivation {
  name = "builtwithnix.org";
  src = ./.;
  nativeBuildInputs = [ asciidoctor ];

  buildPhase = ''
    asciidoctor README.adoc
  '';

  installPhase = ''
    mkdir $out
    cp README.html $out/index.html

    echo builtwithnix.org > $out/CNAME
    touch $out/.nojekyll
  '';
}
