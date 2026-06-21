cask "bettermaccy" do
  version "2.8.1"
  sha256 "1e0fe108810f9565d9aaecf5e42e57499140e1108b7d047a3a9469f3a18bf5cd"

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
