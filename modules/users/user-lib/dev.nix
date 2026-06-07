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
    libtool    
    glib


    graphviz
	

    nodejs
    conda
    uv
    
   
    guile
    black
    claude-code
    xorgserver  # for Xvf
    rustc 
    cargo

  ];
}
