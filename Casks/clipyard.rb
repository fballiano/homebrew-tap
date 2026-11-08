cask "clipyard" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/fballiano/clipyard/releases/download/v#{version}/Clipyard-#{version}.dmg"
  name "Clipyard"
  desc "Menu bar clipboard history and clipboard cleaner"
  homepage "https://github.com/fballiano/clipyard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Clipyard.app"

  # The app keeps the data folders of its old name, clipboard-controller.
  zap trash: [
    "~/Library/Application Support/clipboard-controller",
    "~/Library/Caches/com.fabrizioballiano.clipboard-controller",
    "~/Library/HTTPStorages/com.fabrizioballiano.clipboard-controller",
    "~/Library/Preferences/com.fabrizioballiano.clipboard-controller.plist",
  ]
end
