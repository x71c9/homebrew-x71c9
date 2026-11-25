class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.5.7"
  url "https://github.com/x71c9/augenblick/releases/download/v0.5.7/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "fea9069a9dd6a2299db039f4ff64e20fc7d8f58474c366143ff20b3ba2d5fb9f"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.5.7/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "f23fa24c723f341a38bc7d10c2376da0abdddc2605f195c5cb5cc891640d8e8a"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
