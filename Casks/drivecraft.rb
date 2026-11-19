# The release workflow of fballiano/drivecraft writes this file.
cask "drivecraft" do
  arch arm: "arm64", intel: "x64"

  version "0.1.3"
  sha256 arm:   "fcc0c0e0f4f7d0109f478ef73734b71109679c18bc842d0246ae97200d4215a8",
         intel: "16176525acbdb7403546983b874ae5c5e46fb597119d676681fa6097795dbe60"

  url "https://github.com/fballiano/drivecraft/releases/download/v#{version}/DriveCraft-#{version}-macos-#{arch}.zip"
  name "DriveCraft"
  desc "Open source replacement for the OneDrive, Dropbox, and Box apps"
  homepage "https://github.com/fballiano/drivecraft"

  depends_on :macos

  app "DriveCraft.app"

  # Only the settings. The synced files in ~/DriveCraft stay.
  zap trash: "~/Library/Application Support/drivecraft"
end
