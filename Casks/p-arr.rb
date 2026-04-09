cask "p-arr" do
  version "0.7.4"
  sha256 "37e702b20cc128c53e342fe79aa504fbcc7f6a3616c1da2f87ba40ce655c80e8"

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
