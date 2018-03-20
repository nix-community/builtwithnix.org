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
    echo builtwithnix.org > $out/CNAME
    cp README.html $out/index.html
  '';
}
