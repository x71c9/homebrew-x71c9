class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.2.4"
  url "https://github.com/x71c9/augenblick/releases/download/v0.2.4/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "5aff3816bf8278464d7bce3b223561e19882f43f329fd0272e767667a8ca8a0a"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.2.4/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "976cad9a468f76eb0034559ade164e62f1ebb289866263e01e9b10146f8091d3"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
