{ pkgs, ... }:

{
  home.packages = with pkgs; [
    (python3.withPackages (ps: [ ps.jupyter ]))
    julia
    ghc
    haskellPackages.cabal-install
    haskell-language-server  # HLS LSP server (used by lsp-haskell)
    ormolu                   # Haskell formatter
    clisp
    cmake
    gcc
    gnumake
    libtool
    glib
    clang-tools  # provides clangd (LSP server) and clang-format
    lldb         # debug adapter for C/C++/Rust (used by dap-lldb)
    pyright      # Python LSP server (used by eglot)
    ruff         # Python formatter (used by ruff-format Emacs package)


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
    rust-analyzer  # Rust LSP server (used by lsp-mode)
    rustfmt        # Rust formatter (used by rust-mode)

  ];
}
