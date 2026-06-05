cask "panna-cotta" do
  version "0.2.0"

  on_arm do
    sha256 "c69a3abf382772d31df8b76ef7bf5a0ea3e124e4c1f7d67273c1920df468c572"

    url "https://github.com/mike623/panna-cotta/releases/download/v#{version}/Panna.Cotta_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "d7f7bc0bc66c4e40e74d24599d132a50b93930b668932bcf9548bd2f70b2649a"

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
