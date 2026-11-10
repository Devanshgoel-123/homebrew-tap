cask "diskpilot" do
  version "0.6.3"
  sha256 "9ccad43829ef29096e32778bdc473db5fe09bcaf42b8f451270d4009eb78a516"

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
