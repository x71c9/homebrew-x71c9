class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.5.3"
  url "https://github.com/x71c9/augenblick/releases/download/v0.5.3/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "7cbd53df240f36ea66b9ee9fb8de33937a500319cfcf249102588718e1444eb5"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.5.3/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "8a90c235980e4c406a1433894ffbbb5583e5c9a2b78d46fc01908924e7b77f7d"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
