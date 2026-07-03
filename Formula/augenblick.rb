class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.3.0"
  url "https://github.com/x71c9/augenblick/releases/download/v0.3.0/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "f15a3e0c09b9c48b277220a030aea150b04e21744000bd95658f6350b19e0a2c"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.3.0/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "0db5119a59509627512660dc59803ce59585596fef3ce90cca5fc7f02dff321e"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
