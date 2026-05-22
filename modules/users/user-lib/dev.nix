{ pkgs, ... }:

{
  home.packages = with pkgs; [
    (python3.withPackages (ps: [ ps.jupyter ]))
    julia
    ghc
    haskellPackages.cabal-install
    clisp
    cmake
    gcc        
    gnumake
    libtool    # vterm requires it
    glib


    nodejs
    conda
    uv
    poetry
    octave
    guile
    black
    claude-code
    xorgserver  # for Xvf
    rustc 
    cargo
    #gimini-cli
    codex

  ];
}
