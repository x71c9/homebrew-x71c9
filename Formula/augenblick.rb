class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.5.0"
  url "https://github.com/x71c9/augenblick/releases/download/v0.5.0/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "4be96722a6d0f9e54befdae5a50eb086040bdd61e5a5bea9d81910df64bad0a2"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.5.0/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "ae4545d67683ed7de7c08ff79a7f293db91562777f6c7aa573c863b061670ac9"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
