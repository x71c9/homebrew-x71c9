class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.4.4"
  url "https://github.com/x71c9/qrx/releases/download/v0.4.4/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "d27cb7dea923ee026f343b9026473ce3ea035f7db9b514e9bd5735aa2418845c"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.4.4/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "20ccc389d2c0ba1905c1553bea1a15be344a977b59a3fe0a975009b5bfc5088d"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
