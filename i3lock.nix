{
  pkgs ? (import <nixpkgs> {}),
  system ? builtins.currentSystem,
  ...
} :
derivation {
  name = "i3lock-epitdc-0.0.1";
  builder = "${pkgs.bash}/bin/bash";
  args = [ ./builder.sh ];
  src = ./i3lock;
  inherit (pkgs) coreutils;
  inherit system;

  buildInputs = with pkgs; [
    xorg.xcbutil
    xorg.xcbutilimage
    xcbutilxrm
    libxkbcommon
    cairo
    systemd
    libev
    pam
  ];
}
