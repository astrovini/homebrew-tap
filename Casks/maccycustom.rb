cask "maccycustom" do
  version "2.7.1"
  sha256 "c7b82aabdb952612cb61567433effca4c4cfaf22456808a9145892e691a4dc43"

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
