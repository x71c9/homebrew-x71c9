class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.2.11"
  url "https://github.com/x71c9/augenblick/releases/download/v0.2.11/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "7d0e1799272bcbd692983078949442e5c5206835e706546d122dc2081b7b23cd"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.2.11/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "d23cac7b7da82dfd35c945668ee949bd2772d560c0c928b945ca356e77c25722"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
