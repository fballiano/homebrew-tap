# The release workflow of fballiano/drivecraft writes this file.
cask "drivecraft" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "e845d3385f63de1cfcda0cbb7092f4ed4497f4073eeb12e036155e25e94d6ebb",
         intel: "1f0c1b2882dc1e7c9caa3cfc54e2bbe4def5314bc1163f2318c03f62f9574956"

  url "https://github.com/fballiano/drivecraft/releases/download/v#{version}/DriveCraft-#{version}-macos-#{arch}.zip"
  name "DriveCraft"
  desc "Open source client for OneDrive, Dropbox, Box, and more"
  homepage "https://github.com/fballiano/drivecraft"

  depends_on :macos

  app "DriveCraft.app"

  # Only the settings. The synced files in ~/DriveCraft stay.
  zap trash: "~/Library/Application Support/drivecraft"
end
