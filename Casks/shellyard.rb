# The release workflow of fballiano/shellyard rewrites `version` and `sha256`.
cask "shellyard" do
  version "1.4.0"
  sha256 "5017c606d12748bd6415cb830f529d893612c6825221a2f07a89b1fc36220edd"

  url "https://github.com/fballiano/shellyard/releases/download/v#{version}/Shellyard-#{version}.zip"
  name "Shellyard"
  desc "SSH connection manager on the Ghostty terminal engine"
  homepage "https://github.com/fballiano/shellyard"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Shellyard.app"
  binary "#{appdir}/Shellyard.app/Contents/MacOS/shellyard-cli", target: "shellyard"
end
