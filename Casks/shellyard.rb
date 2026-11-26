# The release workflow of fballiano/shellyard rewrites `version` and `sha256`.
cask "shellyard" do
  version "2.3.0"
  sha256 "edcbb6a3fea7ef7b327f6e3504e38bae9cffd61b2fe137e26220d166aa3e9dd6"

  url "https://github.com/fballiano/shellyard/releases/download/v#{version}/Shellyard-#{version}.zip"
  name "Shellyard"
  desc "SSH connection manager on the Ghostty terminal engine"
  homepage "https://github.com/fballiano/shellyard"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Shellyard.app"
  binary "#{appdir}/Shellyard.app/Contents/MacOS/shellyard-cli", target: "shellyard"
end
