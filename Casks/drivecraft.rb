# The release workflow of fballiano/drivecraft writes this file.
cask "drivecraft" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "e37bd46f5f9aac13816fbe13035ceceb2090f47fc7faed7b32a358473d59c4aa",
         intel: "a8a875fa1e6937b749fa0a577b745f197736164e59eb4ba5337392314eebf6da"

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
