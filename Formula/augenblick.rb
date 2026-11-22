class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.5.5"
  url "https://github.com/x71c9/augenblick/releases/download/v0.5.5/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "38f92a0333161ac9685eb10491786a42a6a9021f57ee9ba2d8de40a323375e86"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.5.5/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "34b935859fe1692378730d678fe4a1735a585a3aaeac60a32424fdcda2ebce3e"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
