{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      css = ["eslint_d"];
      gitcommit = ["commitlint"];
      go = ["golangcilint"];
      javascript = ["eslint_d"];
      javascriptreact = ["eslint_d"];
      json = ["jsonlint"];
      lua = ["luacheck"];
      markdownlint = ["markdownlint"];
      nix = ["statix"];
      proto = ["buf_lint"];
      python = ["ruff"];
      sh = ["shellcheck"];
      typescript = ["eslint_d"];
      typescriptreact = ["eslint_d"];
      yaml = ["yamllint"];
    };
  };
}
