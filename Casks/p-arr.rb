cask "p-arr" do
  version "0.3.2"
  sha256 "7565b074c36e9e5e01d6f8bfce8f44a0a992b89bb948a3c09ee651bb28c6fa2d"

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
