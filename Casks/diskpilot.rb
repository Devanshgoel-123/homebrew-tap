cask "diskpilot" do
  version "0.6.1"
  sha256 "baed03f31538067290fd4ab77247b9bd9255d7aeb2b6f35a5984283e368d69a3"

  url "https://github.com/Devanshgoel-123/diskpilot/releases/download/v#{version}/DiskPilot.dmg"
  name "DiskPilot"
  desc "Explains what is filling your disk and what is safe to clear"
  homepage "https://diskpilot.live/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "DiskPilot.app"

  zap trash: [
    "~/Library/Application Support/dev.diskpilot.app",
    "~/Library/Caches/dev.diskpilot.app",
    "~/Library/Preferences/dev.diskpilot.app.plist",
    "~/Library/Saved Application State/dev.diskpilot.app.savedState",
    "~/Library/WebKit/dev.diskpilot.app",
  ]
end
