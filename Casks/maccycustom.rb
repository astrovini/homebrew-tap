cask "maccycustom" do
  version "2.6.2"
  sha256 "6c8c3fb0a3fe9398794973ce1c3e3293b5e0a7827d9234e8478cf64eb787b86d"

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
