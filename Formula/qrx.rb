class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.3.0"
  url "https://github.com/x71c9/qrx/releases/download/v0.3.0/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "65adb941275b6786a69017b84a526e28f1419001af34ded78a6ad60ea655c4b9"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.3.0/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "f57736c1b2e08fcd828c591262657a070899286074e23bd4f47095858332284c"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
