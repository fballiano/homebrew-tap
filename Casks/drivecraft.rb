# The release workflow of fballiano/drivecraft writes this file.
cask "drivecraft" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "756f72dd5fca4e77b8c5d359f0b4f65335791e267630df9153e064b5b4639e66",
         intel: "a0faedb517fc9757440825c776470a6edcc7540ccc1108c2781f9d87b57373d4"

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
