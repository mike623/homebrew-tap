cask "panna-cotta" do
  version "0.1.14"

  on_arm do
    sha256 "50f54f2d2a181a44271e6e25e5ed0440620cdd42dc1accbdd1fc54706cdabd36"

    url "https://github.com/mike623/panna-cotta/releases/download/v#{version}/Panna.Cotta_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "28eb703555c21de22adad8ad4ec47889a0e2b72f67702d3cd29ec8c65354f638"

    url "https://github.com/mike623/panna-cotta/releases/download/v#{version}/Panna.Cotta_#{version}_x64.dmg"
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
