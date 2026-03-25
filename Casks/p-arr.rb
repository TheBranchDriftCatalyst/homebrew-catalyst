cask "p-arr" do
  version "0.7.1"
  sha256 "e03d4f3827c32c677222d68bb9375379e9f8f63d8a0703ce52959cf371fb85d1"

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
