cask "zorderly" do
  version "0.1.0"
  sha256 "cb2e4ac2c82bb7e73c5e7a854dcf703fec4437db63188d1bfbb39c3c2fbc137d"

  url "https://github.com/rszabo50/zorderly/releases/download/v#{version}/ZOrderly-#{version}-macos-arm64-UNNOTARIZED.zip"
  name "ZOrderly"
  desc "Configurable window focus and stacking prototype for macOS"
  homepage "https://github.com/rszabo50/zorderly"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "ZOrderly.app"

  uninstall quit: "dev.zorderly.app"

  caveats do
    unsigned_accessibility
  end

  caveats "This is an unnotarized preview. macOS may require approval in System Settings > Privacy & Security before its first launch."
end
