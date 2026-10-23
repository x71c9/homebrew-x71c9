class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.5.1"
  url "https://github.com/x71c9/augenblick/releases/download/v0.5.1/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "91f682bb50b4d76e02b3b05fda7e04c17b4d2e0cd07cde6ceb06a429eadaa8d4"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.5.1/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "9c8b15fa4db545921b213edb5fb9b304e2fef69dd9f8116aebdb99b0c40eb449"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
