class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.2.10"
  url "https://github.com/x71c9/augenblick/releases/download/v0.2.10/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "6107cf87a6a55473295cc41acecd64133ebf526f873da3a8201a85f083a4035b"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.2.10/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "0e57d71132e0d5cef9881489fe93fc9c889f92dfb80cbf44e04169e8231373e8"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
