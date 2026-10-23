# mise

English | [Русский](README.ru.md)

Global tool versions: language toolchains (Node.js, Go, Rust, Flutter with Dart), jsvu, and the
language servers and formatters used by [nvim](../nvim/README.md). Tools come from their own
ecosystems (npm, Go modules, rustup, conda-forge, PyPI, GitHub releases) and are available both
in nvim and in the shell.

A few npm language servers have fewer weekly downloads than mise's safety threshold; they are
allowed explicitly with `allow_low_downloads` after checking that they are the packages
nvim-lspconfig documents.

## Dependencies

```sh
sudo pacman -S mise
```

Versions are `latest` (Rust: `stable`), so every tool tracks the newest stable release rather
than a version pinned by some project.

After `stow mise`, install the tools from the config:

```sh
mise install
```

`latest` resolves to the newest *installed* version, so `mise install` does not update
anything. To move to the newest releases:

```sh
mise upgrade
```

## Project versions

A project can pin its own versions; they override the global ones inside its directory.

```sh
cd <project>
mise use flutter@3.41.9                         # writes mise.toml (commit it)
mise use --path mise.local.toml flutter@3.41.9  # personal, not committed
mise current                                    # versions in effect here
```

Version files of other managers are honored for Node.js (`.nvmrc`, `.node-version`), Go
(`.go-version`), Rust (`rust-toolchain.toml`) and Java (`.java-version`, `.sdkmanrc`). Flutter
has none that mise reads (`.fvmrc` included), so it needs `mise.toml`. Python stays with the
system and uv.
