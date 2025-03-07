{
  pkgs ? (import <nixpkgs> {}),
  ...
} :
derivation {
  name = "i3lock-epitdc-0.0.1";
  builder = "${pkgs.bash}/bin/bash";
  args = [ ./builder.sh ];
  src = ./i3lock;
  inherit (pkgs) coreutils;
  system = builtins.currentSystem;
}
