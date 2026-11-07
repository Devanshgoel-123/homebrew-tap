cask "diskpilot" do
  version "0.5.1"
  sha256 "b58437d7e722007d146af0f70f65ccc6d5e0620afa9a223a02d70cbe49685b19"

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
