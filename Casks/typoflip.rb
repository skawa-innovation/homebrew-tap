cask "typoflip" do
  version "1.4.1"
  sha256 "6e12ae4b574b55ad502002730b65efdc5c394c9b4938d4144223fca7d411c848"

  url "https://typoflip.com/download/Typoflip-#{version}.dmg"
  name "Typoflip"
  desc "Fixes text typed in the wrong keyboard layout"
  homepage "https://typoflip.com/"

  livecheck do
    url "https://typoflip.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Typoflip.app"

  uninstall quit: "hu.skawa.typoflip"

  zap trash: [
    "~/Library/Application Support/Typoflip",
    "~/Library/Caches/hu.skawa.typoflip",
    "~/Library/HTTPStorages/hu.skawa.typoflip",
    "~/Library/Preferences/hu.skawa.typoflip.plist",
    "~/Library/WebKit/hu.skawa.typoflip",
  ]
end
