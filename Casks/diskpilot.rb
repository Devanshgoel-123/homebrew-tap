cask "diskpilot" do
  version "0.6.5"
  sha256 "a8b7e85c44ca2d392322e50cfa7165bf6933a6d7b83367c76f368677893245d3"

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
