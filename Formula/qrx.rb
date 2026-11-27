class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.4.6"
  url "https://github.com/x71c9/qrx/releases/download/v0.4.6/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "a569236a3e50e0383cbb4236c235549e442fb7fed847d3e471c33f5e7b806641"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.4.6/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "ea6c6bb55836a598fb64545afa33351096d5cd5694c9125c3890333fa51c0ac8"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
