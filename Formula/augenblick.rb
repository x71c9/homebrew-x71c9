class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.6.1"
  url "https://github.com/x71c9/augenblick/releases/download/v0.6.1/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "d40d417b0801000fb41bd84052ae0b9b077864b12a9fc61adb0ee9dcb93e3115"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.6.1/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "19c60a8630d4adac622e77b1eddd65d98a81f66e4b330a8a470860ee872e9a99"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
