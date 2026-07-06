# Homebrew cask for ColdCoach — https://github.com/tiXor-code/coldcoach
#
#   brew install --cask tiXor-code/coldcoach/coldcoach
#
# Homebrew strips the Gatekeeper quarantine on install, so the ad-hoc-signed .dmg
# needs no notarization. Bump version + sha256 on each release:
#   shasum -a 256 ColdCoach.dmg
cask "coldcoach" do
  version "26.07.05"
  sha256 "a3cbfeef414f3e02842578208e1ddf0fe2149a986a36e25da834e9003a3f7ac3"

  url "https://github.com/tiXor-code/coldcoach/releases/download/v#{version}/ColdCoach.dmg"
  name "ColdCoach"
  desc "Local, open-source live coaching for cold calls"
  homepage "https://github.com/tiXor-code/coldcoach"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "ColdCoach.app"

  zap trash: [
    "~/Library/Application Support/ColdCoach",
  ]
end
