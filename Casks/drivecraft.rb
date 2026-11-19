# The release workflow of fballiano/drivecraft writes this file.
cask "drivecraft" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "11e072c20995363a2ee1f059e25d36aba1a271b75ad45c9afff303826ef3148a",
         intel: "ff9a63fdb28b182a82f20a97de0facab5522e00693c282379170f3a72ea80b0c"

  url "https://github.com/fballiano/drivecraft/releases/download/v#{version}/DriveCraft-#{version}-macos-#{arch}.zip"
  name "DriveCraft"
  desc "Open source replacement for the OneDrive, Dropbox, and Box apps"
  homepage "https://drivecraft.fabrizioballiano.com/"

  depends_on :macos

  app "DriveCraft.app"

  # The start at login (autostart.rs).
  uninstall launchctl: "io.github.fballiano.drivecraft",
            delete:    "~/Library/LaunchAgents/io.github.fballiano.drivecraft.plist"

  # Only the settings. The synced files in ~/DriveCraft stay.
  zap trash: "~/Library/Application Support/drivecraft"
end
