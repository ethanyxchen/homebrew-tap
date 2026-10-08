# Homebrew tap

Homebrew packages for my projects.

```sh
brew install --cask ethanyxchen/tap/<cask>
brew install ethanyxchen/tap/<formula>
```

## Packages

| Package | Type | Project |
| --- | --- | --- |
| `hammertime` | Cask | [Hammertime](https://github.com/ethanyxchen/github-maxxer) |

## Adding a project

Each package is published by its own project's release workflow, which writes only its own file: apps go in `Casks/<name>.rb` and command-line tools in `Formula/<name>.rb`.

1. Create a deploy key with write access for the project, so each project can be revoked on its own:

   ```sh
   ssh-keygen -t ed25519 -N "" -C "<project> release" -f tap-key
   gh repo deploy-key add tap-key.pub --repo ethanyxchen/homebrew-tap --allow-write --title "<project> release workflow"
   gh secret set TAP_DEPLOY_KEY --repo ethanyxchen/<project> < tap-key
   rm tap-key tap-key.pub
   ```

2. In the project's release workflow, clone this tap with that key, write the package file with the new version and checksum, commit, then `git pull --rebase` and `git push` so concurrent releases from other projects don't collide. [Hammertime's release workflow](https://github.com/ethanyxchen/github-maxxer/blob/main/.github/workflows/release.yml) is a working example.
3. Add the package to the table above.
