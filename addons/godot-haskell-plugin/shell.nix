{ pkgs ? import <nixpkgs> {}, ghc ? pkgs.ghc }:

pkgs.haskell.lib.buildStackProject {
  name = "simula-godot";
  inherit ghc;
  buildInputs = with pkgs; [ 
                             mesa
                          #  gcc7
                             pkgconfig
                             xorg.pixman
                             wayland-protocols
                             wayland
                             weston
                             xorg.libX11 # possibly not needed
                          #  dbus
                          #  (callPackage simula-wayland/weston3.nix { })
                          #  (callPackage simula-openvr/openvr.nix { })
                          #  libxml2
                             libxkbcommon
                          #  vulkan-loader
                          #  steam
                             git
                             zlib
                          ];

  LANG = "en_US.UTF-8";
  TMPDIR = "/tmp";
}
