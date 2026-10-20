cask "typoflip" do
  version "1.4.2"
  sha256 "033c5715ae0f5a56d6bfa4c2b1f08e5888ffcd59d5e273806459ce5ebe028d57"

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
