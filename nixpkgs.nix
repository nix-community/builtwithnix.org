let
  src = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs-channels/archive/0e7c9b32817e5cbe61212d47a6cf9bcd71789322.tar.bz2";
    sha256 = "1dm777cmlhqcwlrq8zl9q2d87h3p70rclpvq36y43kp378f3pd0y";
  };
in
  (import src) { config = {}; overlays = []; }
