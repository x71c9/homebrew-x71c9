class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.5.0"
  url "https://github.com/x71c9/qrx/releases/download/v0.5.0/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "bc7ef1ab57fe1eaed12ecbc9e9cd8c64990a42391b0167060a8acd01aff30704"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.5.0/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "f267ddbc89c7b6e8ee5c8cdc53a87f4248b5f8e0f92950a2f4619d7feeebe111"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
