class Saetta < Formula
  desc "LLM inference engine for Qwen3.8-Flash-Next on Apple Silicon (M5 Max)"
  homepage "https://github.com/antonellof/saetta"
  url "https://github.com/antonellof/saetta/releases/download/v0.7.2/saetta-macos-arm64.tar.gz"
  sha256 "e1fca274078481a11ddda5729fd1b48bae9846638eb783d63b4c48e75ae274d8"
  version "0.7.2"
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
