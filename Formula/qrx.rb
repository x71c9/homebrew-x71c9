class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.2.4"
  url "https://github.com/x71c9/qrx/releases/download/v0.2.4/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "d53a22ae3171a426acbb3abc31d0ab73c97d99f73a2a7feb57ac43bcce850499"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.2.4/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "4305b421261c517f654a7c1e82a1c3b6e4bce1060af1757fc2172eaace262fa0"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
