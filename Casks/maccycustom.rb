cask "maccycustom" do
  version "2.8.0"
  sha256 "89ef6e21e9ce867c08e201ea7285dc7d8ad509907a74f624426a2cb5979a3b23"

  url "https://github.com/astrovini/MaccyCustom/releases/download/v#{version}/Maccy-#{version}.zip"
  name "MaccyCustom"
  desc "Maccy fork with multi-select paste"
  homepage "https://github.com/astrovini/MaccyCustom"

  depends_on macos: :sonoma
  conflicts_with cask: "maccy"

  app "Maccy.app"

  uninstall quit: "com.astrovini.maccy"

  zap trash: [
    "~/Library/Application Support/Maccy",
    "~/Library/Preferences/com.astrovini.maccy.plist",
  ]
end
