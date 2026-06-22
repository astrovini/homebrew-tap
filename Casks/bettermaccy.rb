cask "bettermaccy" do
  version "2.8.2"
  sha256 "5f581575c8d130bb578512acc061a0ed36a75269b12c01aac20ba7aec207dd85"

  url "https://github.com/astrovini/BetterMaccy/releases/download/v#{version}/BetterMaccy-#{version}.zip"
  name "BetterMaccy"
  desc "Maccy fork with multi-select paste"
  homepage "https://github.com/astrovini/BetterMaccy"

  depends_on macos: :sonoma

  app "BetterMaccy.app"

  uninstall quit: "com.astrovini.bettermaccy"

  zap trash: [
    "~/Library/Containers/com.astrovini.bettermaccy",
    "~/Library/Application Scripts/com.astrovini.bettermaccy",
  ]
end
