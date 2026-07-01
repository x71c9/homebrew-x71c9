class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.4.2"
  url "https://github.com/x71c9/qrx/releases/download/v0.4.2/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "6eda65caffbc68a4339419ccd13fc64e1e865a6ca387adcb01b701968c20943b"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.4.2/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "cad7e3d255f0b02fd8395ab04d93843805f5044a5bd28acd4dc6b70118c90445"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
