cask "maccycustom" do
  version "2.6.1"
  sha256 "a18215f889eb5355350a73a01ef0438b3ad32a8fa235ed087ceff98c14d6eed8"

  url "https://github.com/astrovini/MaccyCustom/releases/download/v#{version}/Maccy-#{version}.zip"
  name "MaccyCustom"
  desc "Maccy fork with multi-select paste"
  homepage "https://github.com/astrovini/MaccyCustom"

  depends_on macos: ">= :sonoma"
  conflicts_with cask: "maccy"

  app "Maccy.app"

  uninstall quit: "com.astrovini.maccy"

  zap trash: [
    "~/Library/Application Support/Maccy",
    "~/Library/Preferences/com.astrovini.maccy.plist",
  ]
end
