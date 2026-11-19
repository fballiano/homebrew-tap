# The release workflow of fballiano/drivecraft writes this file.
cask "drivecraft" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "2f66aa0a9d46d0613e2501ce7e7e3c20f58d83602eab7603fabfe6d0a22241f1",
         intel: "caa2002f089d83b31f6cc5f6dfa31a7d1687b7b66f30b22869d8aecdf1fda864"

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
