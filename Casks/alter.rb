cask "alter" do
  version "0.2.1"
  sha256 "0414d12f19c86ea96637b4114906afb78bfb1303a4131153c7d12e6b67ae28ff"

  url "https://github.com/kartikssj/alter/releases/download/v#{version}/Alter-#{version}.zip"
  name "Alter"
  desc "Keyboard-driven window switcher for macOS"
  homepage "https://github.com/kartikssj/alter"

  depends_on macos: ">= :sonoma"

  app "Alter.app"

  caveats <<~EOS
    Alter is not notarized yet. On first launch, right-click the app and choose
    Open, or install with:
      brew install --cask kartikssj/tap/alter --no-quarantine

    Alter requires Accessibility access (to intercept the hotkeys and focus
    windows) and optionally Screen Recording (to show other apps' window
    titles). Grant them when prompted on first launch.
  EOS
end
