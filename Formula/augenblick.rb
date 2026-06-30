class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.2.8"
  url "https://github.com/x71c9/augenblick/releases/download/v0.2.8/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "4c093b9f5ccb630ebaaacc14d6f8803b7f0986693945e9533d30dbe54b1aab95"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.2.8/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "3d44603b1082a3628a8ef18d7a391e96e3dd73a3149aba9743f753d4868cf8d2"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
