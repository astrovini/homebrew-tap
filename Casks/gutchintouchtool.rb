cask "gutchintouchtool" do
  version "2.0.0"
  sha256 "0ab19317fad4e772b90a2e07b6c49a2561ee180aceea7706e7c28ff71a8e5bcc"

  url "https://github.com/astrovini/GutchinTouchTool/releases/download/v#{version}/GutchinTouchTool-#{version}.dmg"
  name "GutchinTouchTool"
  desc "macOS trackpad gesture engine"
  homepage "https://github.com/astrovini/GutchinTouchTool"

  depends_on macos: :sonoma

  app "GutchinTouchTool.app"

  uninstall quit: "com.astrovini.touchtool"

  zap trash: [
    "~/Library/Application Support/GutchinTouchTool",
    "~/Library/Preferences/com.astrovini.touchtool.plist",
  ]
end
