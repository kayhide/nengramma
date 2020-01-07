with import <nixpkgs> {};

pkgs.mkShell rec {
  pname = "nengramma-shell";
  version = "0.1.0";
  buildInputs = with pkgs; [
    hivemind
    nodejs-13_x
    yarn
  ];
}
