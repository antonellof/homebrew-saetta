class Saetta < Formula
  desc "LLM inference engine for Qwen3.8-Flash-Next on Apple Silicon (M5 Max)"
  homepage "https://github.com/antonellof/saetta"
  url "https://github.com/antonellof/saetta/releases/download/v0.6.2/saetta-macos-arm64.tar.gz"
  sha256 "811bd5d7abc2a0a08a630b149f4f661cfa6c9b434d6b3e81a05666ba86f7a110"
  version "0.6.2"
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
