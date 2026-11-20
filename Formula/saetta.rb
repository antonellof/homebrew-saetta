class Saetta < Formula
  desc "LLM inference engine for Qwen3.8-Flash-Next and Qwen3.8-27B on Apple Silicon (M5 Max)"
  homepage "https://github.com/antonellof/saetta"
  url "https://github.com/antonellof/saetta/releases/download/v0.8.1/saetta-macos-arm64.tar.gz"
  sha256 "81a1f710526c3857b5d9a6f4c547bbcf253182d23c1c3d5236578c278380c33f"
  version "0.8.1"
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
