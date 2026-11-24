class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.5.6"
  url "https://github.com/x71c9/augenblick/releases/download/v0.5.6/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "edd492ea3086317ba1c22a71f441c48cb3970a9cfe197e67b54e694d6abd509f"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.5.6/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "457b6f52ec25ca086185d7494aa1c85775030e92ddf8c24238ed18fea15491ce"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
