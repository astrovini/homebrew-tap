cask "bettermaccy" do
  version "2.8.3"
  sha256 "b083a36c92ef90f04a59d8cb609ec9823fd5ea0fc0441b16bf726aa64fad15bb"

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
