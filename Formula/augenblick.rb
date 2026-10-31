class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.5.2"
  url "https://github.com/x71c9/augenblick/releases/download/v0.5.2/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "0edafbcd5b02f88f05f44731648de7910c21a28ed70688d0f42a80f82429f0be"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.5.2/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "38da47f318901d52641c10289ab58b0e19bce3225a12defaab23d4397e11d229"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
