class Saetta < Formula
  desc "LLM inference engine for Qwen3.8-Flash-Next on Apple Silicon (M5 Max)"
  homepage "https://github.com/antonellof/saetta"
  url "https://github.com/antonellof/saetta/releases/download/v0.7.0/saetta-macos-arm64.tar.gz"
  sha256 "090d7dc82937e4b8e67d15e2262a37a89c2e14051a6e753bd60247b6c051ddcf"
  version "0.7.0"
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
