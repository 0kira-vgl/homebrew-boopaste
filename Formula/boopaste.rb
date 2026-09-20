class Boopaste < Formula
  desc "Paste clipboard images as a file path, in Ghostty and Terminal.app"
  homepage "https://github.com/0kira-vgl/boopaste"
  url "https://github.com/0kira-vgl/boopaste/releases/download/v0.1.0/boopaste-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "def7d87b6b49a38ab04dd608066810b23e0ce864d332f9e38a50e1a468ad6790"
  version "0.1.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "boopaste"
  end

  def caveats
    <<~EOS
      Run `boopaste init` to install the LaunchAgent, then `boopaste on`
      to turn it on. macOS will ask for Accessibility / Input Monitoring
      permission the first time it runs.
    EOS
  end

  test do
    assert_match "boopaste #{version}", shell_output("#{bin}/boopaste --version")
  end
end
