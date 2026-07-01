class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.4.1"
  url "https://github.com/x71c9/qrx/releases/download/v0.4.1/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "06ce4f68fc2836e16ac4c4969d766312ecb467aaa086f424fba1e39a0ce5a3e1"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.4.1/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "d69709d4b3931055fd3c408b44b5925ec8a0a2c76e4ee3395bacc68adcc0db61"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
