class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.4.3"
  url "https://github.com/x71c9/qrx/releases/download/v0.4.3/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "7e411947510fdf478dba78486f084d2820da07ba27b67528f3d79c1411a6a7d3"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.4.3/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "86e808f2e9976500d264ac0804ceac8b2d76a22f3d2ddb02811cd81c25ad7221"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
