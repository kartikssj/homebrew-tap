cask "alter" do
  version "0.2.0"
  sha256 "6d189c748d285bd29c10ad0447757a2e46e650c47eb7a6a9a174308eb12830f7"

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
