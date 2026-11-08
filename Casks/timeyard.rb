cask "timeyard" do
  version "1.1.0"
  sha256 "9f904cdc647957d1fc08bce2f1b972f8fa646abf20aea614ae5e3c2be7a33e4b"

  url "https://github.com/fballiano/timeyard/releases/download/v#{version}/Timeyard-#{version}.dmg"
  name "Timeyard"
  desc "Menu bar stopwatch"
  homepage "https://github.com/fballiano/timeyard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Timeyard.app"

  # The data folders keep the old name of the application on purpose, so an
  # install of thyme-ng keeps its sessions and settings.
  zap trash: [
    "~/Library/Application Support/thyme-ng",
    "~/Library/Caches/com.fabrizioballiano.thyme-ng",
    "~/Library/HTTPStorages/com.fabrizioballiano.thyme-ng",
    "~/Library/Preferences/com.fabrizioballiano.thyme-ng.plist",
  ]
end
