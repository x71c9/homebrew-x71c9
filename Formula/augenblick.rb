class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.4.0"
  url "https://github.com/x71c9/augenblick/releases/download/v0.4.0/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "038db2812e015c9a59e17d79d0a1fffef630a539f2431aeeed52faedd80d2c36"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.4.0/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "8cfecae711b2d513078a2380e38694e06ef4d9888e33b4e1b8603b8414f78e4b"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
