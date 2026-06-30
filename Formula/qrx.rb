class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.2.1"
  url "https://github.com/x71c9/qrx/releases/download/v0.2.1/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "db7033c5031676a531d702854db2635ec7e43c811ace524c0de987a0b305000c"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.2.1/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "6f712623c6934145f8ce9409a53badc81b66ad6cb5de31dc6df85e17dd48ff2e"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
