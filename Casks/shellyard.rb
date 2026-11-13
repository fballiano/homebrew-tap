# The release workflow of fballiano/shellyard rewrites `version` and `sha256`.
cask "shellyard" do
  version "2.1.2"
  sha256 "5802de97205d50999133f2b9c885d5a97b8ea84de2afb6c1d067349c35cd110c"

  url "https://github.com/fballiano/shellyard/releases/download/v#{version}/Shellyard-#{version}.zip"
  name "Shellyard"
  desc "SSH connection manager on the Ghostty terminal engine"
  homepage "https://github.com/fballiano/shellyard"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Shellyard.app"
  binary "#{appdir}/Shellyard.app/Contents/MacOS/shellyard-cli", target: "shellyard"
end
