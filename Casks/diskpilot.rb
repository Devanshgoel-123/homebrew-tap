cask "diskpilot" do
  version "0.6.7"
  sha256 "fc5d666c4acc0ca2e171fa9361884e1c69fecb58593b6d927cd5a0d3b5cbc8bf"

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
