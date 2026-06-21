cask "bettermaccy" do
  version "2.8.0"
  sha256 "89ef6e21e9ce867c08e201ea7285dc7d8ad509907a74f624426a2cb5979a3b23"

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
