class Saetta < Formula
  desc "LLM inference engine for Qwen3.8-Flash-Next and Qwen3.8-27B on Apple Silicon (M5 Max)"
  homepage "https://github.com/antonellof/saetta"
  url "https://github.com/antonellof/saetta/releases/download/v0.8.0/saetta-macos-arm64.tar.gz"
  sha256 "bcf9db8c9e2ec103c4a881aaa0dc0b4934a992b49833a9eb26c1ce0ed8d87776"
  version "0.8.0"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bin/saetta"
  end

  def caveats
    <<~EOS
      One copy of saetta is enough: if you installed it before with the curl installer,
      remove that one (rm ~/.local/bin/saetta), or it runs instead of this one.
      Upgrade with: brew upgrade saetta (saetta update is for the curl install).
    EOS
  end

  test do
    assert_match "saetta #{version}", shell_output("#{bin}/saetta version")
  end
end
