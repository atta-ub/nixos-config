{ ... }:

{
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";

    matchBlocks = {

      # ── Git hosting aliases ──────────────────────────────────────────────
      # These are optional SSH aliases — useful for manual SSH ops or
      # if you ever want to clone using the alias directly (git@github-personal:user/repo).
      # For normal git usage, core.sshCommand in git.nix handles key selection.

      "github-personal" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/id_ed25519_github_personal";
        identitiesOnly = true;
      };

      "github-work" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/id_ed25519_github_work";
        identitiesOnly = true;
      };

      "codeberg-personal" = {
        hostname = "codeberg.org";
        user = "git";
        identityFile = "~/.ssh/id_ed25519_codeberg_personal";
        identitiesOnly = true;
      };

      "codeberg-work" = {
        hostname = "codeberg.org";
        user = "git";
        identityFile = "~/.ssh/id_ed25519_codeberg_work";
        identitiesOnly = true;
      };

      # ── Internal hosts ───────────────────────────────────────────────────
      # All internal machines use a single shared host key (~/.ssh/id_ed25519_hosts).
      # Generate this key once on each machine, then add all public keys to atta.nix.
      # Replace hostname values with IPs or FQDNs if mDNS is not available.

      "atlas" = {
        hostname = "atlas.local";
        user = "atta";
        identityFile = "~/.ssh/id_ed25519_hosts";
        identitiesOnly = true;
      };

      "nash" = {
        hostname = "nash.local";
        user = "atta";
        identityFile = "~/.ssh/id_ed25519_hosts";
        identitiesOnly = true;
      };

      "olympia" = {
        hostname = "olympia.local";
        user = "atta";
        identityFile = "~/.ssh/id_ed25519_hosts";
        identitiesOnly = true;
      };

      "kafka" = {
        hostname = "kafka.local";
        user = "atta";
        identityFile = "~/.ssh/id_ed25519_hosts";
        identitiesOnly = true;
      };
    };
  };
}
