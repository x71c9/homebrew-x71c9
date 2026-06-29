class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.2.3"
  url "https://github.com/x71c9/augenblick/releases/download/v0.2.3/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "60570b3743dccf2fd20af7ec5cabe7f0353ff002ca0d8befd87c35773314a4cc"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.2.3/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "ccce701b1957bd0f3c3a2de356d48396fa47ab778891585a8912438065be7338"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
