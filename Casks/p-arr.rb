cask "p-arr" do
  version "0.6.12"
  sha256 "83fbe15e98420e4c75f0a6dc11d71d73e4933027a7aa6a0317d9f043c3432a63"

  url "https://github.com/TheBranchDriftCatalyst/pr-widget/releases/download/v#{version}/P-Arr-#{version}.zip"
  name "P-Arr"
  desc "Native macOS floating dashboard for GitHub PR management"
  homepage "https://github.com/TheBranchDriftCatalyst/pr-widget"

  depends_on macos: ">= :sequoia"

  app "P-Arr.app"

  zap trash: [
    "~/Library/Preferences/com.catalyst.p-arr.plist",
    "~/Library/Caches/com.catalyst.p-arr",
  ]
end
