cask "alter" do
  version "0.3.2"
  sha256 "b951aaf8213bb37c617670d9e1c827f4a5f5836e04209c95d32b0a0fd4946285"

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
