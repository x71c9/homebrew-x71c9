class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.4.0"
  url "https://github.com/x71c9/qrx/releases/download/v0.4.0/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "cb1d399c540aced56dc2e4940593f007558ea9307e8085feafd6206fd0696093"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.4.0/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "0b01b18a819b37e4907798767c5a0c4aa654853fee21330550bb0432b49792b1"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
