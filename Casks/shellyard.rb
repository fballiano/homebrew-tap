# The release workflow of fballiano/shellyard rewrites `version` and `sha256`.
cask "shellyard" do
  version "1.3.1"
  sha256 "81b36f8aa4aba021500ab73f9e23387d407d85b37a020fe13e177ddd57994aee"

  url "https://github.com/fballiano/shellyard/releases/download/v#{version}/Shellyard-#{version}.zip"
  name "Shellyard"
  desc "SSH connection manager on the Ghostty terminal engine"
  homepage "https://github.com/fballiano/shellyard"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Shellyard.app"
  binary "#{appdir}/Shellyard.app/Contents/MacOS/shellyard-cli", target: "shellyard"
end
