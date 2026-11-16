class Saetta < Formula
  desc "LLM inference engine for Qwen3.8-Flash-Next on Apple Silicon (M5 Max)"
  homepage "https://github.com/antonellof/saetta"
  url "https://github.com/antonellof/saetta/releases/download/v0.6.1/saetta-macos-arm64.tar.gz"
  sha256 "876d6580d0b1b5bb5610878ab7198997c0bcc7e0648d20e24226f14da7b6f4ff"
  version "0.6.1"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bin/saetta"
  end

  test do
    assert_match "saetta #{version}", shell_output("#{bin}/saetta version")
  end
end
