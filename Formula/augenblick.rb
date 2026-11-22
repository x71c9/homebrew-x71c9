class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.5.4"
  url "https://github.com/x71c9/augenblick/releases/download/v0.5.4/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "d70c4d9e3cdb12fb5b0cdaab93522c7f9e6f575a3086642e77a965ce03ceba1c"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.5.4/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "743bf947e67fad9e675322e245acf48f8e7995dcbf5c383e11a23e546fefa5b1"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
