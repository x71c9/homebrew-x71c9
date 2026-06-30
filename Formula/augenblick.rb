class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.2.9"
  url "https://github.com/x71c9/augenblick/releases/download/v0.2.9/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "58ea91eda66ff7c622f5f86feb45dd7c4db00efe4520cb1013cc01c7129590d5"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.2.9/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "c3f5943d0465a66b2bc485b986a39b4b4aaf7feb6c6815fe261ef72c81338002"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
