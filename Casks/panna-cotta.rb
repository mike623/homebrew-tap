cask "panna-cotta" do
  version "0.1.13"

  on_arm do
    sha256 "7f2f45299a1022d01f29461c666490f3a7fded3b4f18b73315afca13323cba64"

    url "https://github.com/mike623/panna-cotta/releases/download/v#{version}/Panna.Cotta_#{version}_aarch64.dmg",
        verified: "github.com/mike623/panna-cotta/"
  end
  on_intel do
    sha256 "f51bb45553e5ace7045a4fe39d0564690867546acac1a471b241764f37107fa7"

    url "https://github.com/mike623/panna-cotta/releases/download/v#{version}/Panna.Cotta_#{version}_x64.dmg",
        verified: "github.com/mike623/panna-cotta/"
  end

  name "Panna Cotta"
  desc "Web-based Stream Deck for controlling computers from your network"
  homepage "https://github.com/mike623/panna-cotta"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Panna Cotta.app"

  zap trash: [
    "~/.panna-cotta",
    "~/.panna-cotta.port",
    "~/Library/Application Support/io.mwong.panna-cotta",
    "~/Library/Caches/io.mwong.panna-cotta",
    "~/Library/Logs/io.mwong.panna-cotta",
    "~/Library/Preferences/io.mwong.panna-cotta.plist",
  ]
end
