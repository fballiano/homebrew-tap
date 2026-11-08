cask "deskyard" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/fballiano/deskyard/releases/download/v#{version}/Deskyard-#{version}.dmg"
  name "Deskyard"
  desc "Menu bar switches and window management"
  homepage "https://github.com/fballiano/deskyard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Deskyard.app"

  # The data folders keep the old name on purpose, so existing settings stay.
  zap trash: [
    "~/Library/Application Support/desktop-commander",
    "~/Library/Caches/com.fabrizioballiano.desktop-commander",
    "~/Library/HTTPStorages/com.fabrizioballiano.desktop-commander",
    "~/Library/Preferences/com.fabrizioballiano.desktop-commander.plist",
  ]
end
