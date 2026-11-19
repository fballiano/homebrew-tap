# The release workflow of fballiano/drivecraft writes this file.
cask "drivecraft" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "9c577dca87b03a2936614d0a4d9357b04702d7f64b19f65d14d6b398f41275b1",
         intel: "c531d7f95b4f8431c808060521093b2b0c21f1b79935b53742c472ae49b4e4c5"

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
