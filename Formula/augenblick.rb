class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.6.0"
  url "https://github.com/x71c9/augenblick/releases/download/v0.6.0/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "997c14a4bd33bc10de7b8c04123884c9d97ec5c13c066f9994ffc0556ba35986"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.6.0/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "9f65a8b98454e82d1c5291b8009026e1b4ab8a9ae4ff07539f6d7b7ec8ed37d3"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
