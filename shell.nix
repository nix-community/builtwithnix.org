with import <nixpkgs> {};
let
  gh-jekyll = bundlerEnv {
    pname = "jekyll";
    gemdir = ./.;
    #exes = [ "jekyll" "github-pages" ];
  };
  in
mkShell {
  buildInputs = [
    gh-jekyll

    bundix
    libxml2
    libxslt
    pkgconfig
  ];
}
