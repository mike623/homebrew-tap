cask "panna-cotta" do
  version "0.2.1"

  on_arm do
    sha256 "5978e69f5dadbf10aa02d150726275048160036b6d7c0e3bddea29704a2b257a"

    url "https://github.com/mike623/panna-cotta/releases/download/v#{version}/Panna.Cotta_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "b276062adcd3525c5b1085b19a2117f8c22fa4eed29934ca4a3cb92d874a1fb3"

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
