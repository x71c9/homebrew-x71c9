class Qrx < Formula
  desc "CLI tool to capture a screen region, decode any QR code found, and copy the result to clipboard."
  homepage "https://github.com/x71c9/qrx"
  version "0.2.2"
  url "https://github.com/x71c9/qrx/releases/download/v0.2.2/qrx-x86_64-apple-darwin.tar.gz"
  sha256 "e82cd2682f19c66e4631fe1daf8c6250f3fab274e2007580e8aa3e8fc17047be"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/qrx/releases/download/v0.2.2/qrx-aarch64-apple-darwin.tar.gz"
    sha256 "f6e9e358dd3dfef81d82c1ec99b81edb21d15f4fc1d529349351769df2fb3772"
  end

  def install
    bin.install "qrx"
  end

  test do
    system "#{bin}/qrx", "--version"
  end
end
