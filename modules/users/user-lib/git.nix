{ ... }:

{
  programs.git = {
    enable = true;

    # Default identity — personal GitHub (used for any repo outside ~/projects/*)
    userName = "atta-personal";
    userEmail = "personal@github-placeholder.com";

    includes = [
      # Personal GitHub: ~/projects/github/
      {
        condition = "gitdir:~/projects/github/";
        contents = {
          user = {
            name = "atta-personal";
            email = "personal@github-placeholder.com";
          };
          core.sshCommand = "ssh -i ~/.ssh/id_ed25519_github_personal -o IdentitiesOnly=yes";
        };
      }

      # Work GitHub: ~/projects/github-work/
      {
        condition = "gitdir:~/projects/github-work/";
        contents = {
          user = {
            name = "atta-work";
            email = "work@github-placeholder.com";
          };
          core.sshCommand = "ssh -i ~/.ssh/id_ed25519_github_work -o IdentitiesOnly=yes";
        };
      }

      # Personal Codeberg: ~/projects/codeberg/
      {
        condition = "gitdir:~/projects/codeberg/";
        contents = {
          user = {
            name = "atta-personal";
            email = "personal@codeberg-placeholder.com";
          };
          core.sshCommand = "ssh -i ~/.ssh/id_ed25519_codeberg_personal -o IdentitiesOnly=yes";
        };
      }

      # Work Codeberg: ~/projects/codeberg-work/
      {
        condition = "gitdir:~/projects/codeberg-work/";
        contents = {
          user = {
            name = "atta-work";
            email = "work@codeberg-placeholder.com";
          };
          core.sshCommand = "ssh -i ~/.ssh/id_ed25519_codeberg_work -o IdentitiesOnly=yes";
        };
      }
    ];

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      rebase.autoStash = true;
    };
  };
}
