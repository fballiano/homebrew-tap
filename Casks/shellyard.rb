# The release workflow of fballiano/shellyard rewrites `version` and `sha256`.
cask "shellyard" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/fballiano/shellyard/releases/download/v#{version}/Shellyard-#{version}.zip"
  name "Shellyard"
  desc "SSH connection manager on the Ghostty terminal engine"
  homepage "https://github.com/fballiano/shellyard"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Shellyard.app"
  binary "#{appdir}/Shellyard.app/Contents/MacOS/shellyard-cli", target: "shellyard"
end
