# The release workflow of fballiano/drivecraft writes this file.
cask "drivecraft" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "1687464d07356bb61b5933a7dc02b80f9ef227d5176623debfb0c870a96137e1",
         intel: "994c26d349c897cea6cf686990061dbb399dd3ba0dc8c05ef284473c63dcae8d"

  url "https://github.com/fballiano/drivecraft/releases/download/v#{version}/DriveCraft-#{version}-macos-#{arch}.zip"
  name "DriveCraft"
  desc "Open source client for OneDrive, Dropbox, Box, and more"
  homepage "https://github.com/fballiano/drivecraft"

  depends_on :macos

  app "DriveCraft.app"

  # Only the settings. The synced files in ~/DriveCraft stay.
  zap trash: "~/Library/Application Support/drivecraft"
end
