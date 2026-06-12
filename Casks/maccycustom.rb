cask "maccycustom" do
  version "2.6.3"
  sha256 "6e8fc128b1156235314c5d94a5f7beab47cfa2f428a44c7a27810a7dc61411aa"

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
