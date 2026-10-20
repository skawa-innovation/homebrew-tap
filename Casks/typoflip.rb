cask "typoflip" do
  version "1.4.3"
  sha256 "1fd040e3e41dc9bc3a3da6d46553fa80d080c5fa5724c58957d755216ad30a46"

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
