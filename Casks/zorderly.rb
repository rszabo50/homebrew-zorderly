cask "zorderly" do
  version "0.1.1"
  sha256 "f0f72205d995d6693d91da27de562589c2c45b489132685baa3f49649e96bb19"

  url "https://github.com/rszabo50/zorderly/releases/download/v#{version}/ZOrderly-#{version}-macos-arm64.zip"
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
end
