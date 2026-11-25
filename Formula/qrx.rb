class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.4.5"
  url "https://github.com/x71c9/qrx/releases/download/v0.4.5/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "e92cf97dba933a1b33b17e44d51fb298b5a19fa317d3af9ad5d8f6ee3a927d5b"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.4.5/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "ab1519ac53674ca65747562ec9c5289dc261949908a71bc2e1233c9fa9b7f111"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
