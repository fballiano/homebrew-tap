cask "clipyard" do
  version "1.3.0"
  sha256 "77a5c883a5bb375a3bcd5074f84fbb85b0fa9cc72454374461ba73579146c4e2"

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
