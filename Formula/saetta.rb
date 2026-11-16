class Saetta < Formula
  desc "LLM inference engine for Qwen3.8-Flash-Next on Apple Silicon (M5 Max)"
  homepage "https://github.com/antonellof/saetta"
  url "https://github.com/antonellof/saetta/releases/download/v0.6.0/saetta-macos-arm64.tar.gz"
  sha256 "45e71477dd3b0e02f984e1a5f4bfaf3a6d3d60354d85da816b933a655f6c4dd1"
  version "0.6.0"
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
