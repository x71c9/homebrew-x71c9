class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.2.3"
  url "https://github.com/x71c9/qrx/releases/download/v0.2.3/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "069ea4bf9f8713587e207a86755e9577521dae19888dc8914df26def4ff214db"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.2.3/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "b8dc91e5bd05aa572c6cb2e469bcd736542fd222eb481bc60cd62b84938b6739"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
