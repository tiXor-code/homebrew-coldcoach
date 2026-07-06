# homebrew-coldcoach

Homebrew tap for [ColdCoach](https://github.com/tiXor-code/coldcoach) — local, open-source live
coaching for cold calls on macOS.

## Install

```sh
brew install --cask tiXor-code/coldcoach/coldcoach
```

or

```sh
brew tap tiXor-code/coldcoach
brew install --cask coldcoach
```

Requires **macOS 14+ (Apple Silicon)**. Homebrew strips the Gatekeeper quarantine on install, so
the ad-hoc-signed app needs no notarization.

## Updating the formula

ColdCoach cuts a CalVer `vYY.MM.DD` release (with `ColdCoach.dmg`) at the end of each day it
changes. To point the tap at a new release, bump `version` and `sha256` in
[`Casks/coldcoach.rb`](Casks/coldcoach.rb):

```sh
gh release download vYY.MM.DD -R tiXor-code/coldcoach -p ColdCoach.dmg
shasum -a 256 ColdCoach.dmg
```

(A future enhancement can have ColdCoach's `release.yml` push this bump automatically.)
