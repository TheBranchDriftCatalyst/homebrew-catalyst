cask "p-arr" do
  version "1.3.0"
  sha256 "ac755679026a1f42b46664d4ed3abe4cb4491494dce7aebba69564267a4ba460"

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
