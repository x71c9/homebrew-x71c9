class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.6.2"
  url "https://github.com/x71c9/augenblick/releases/download/v0.6.2/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "8f718b22ea38ef9d9d67b4b0ca6787bc2935ac47e30884e0ac7055f0daa036ee"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.6.2/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "310e5df926dd2f3b6410a7fab40538808c560a2be8bee68687ef8d98b24846db"
  end

  def install
    bin.install "augenblick"
  end

  def caveats
    <<~'CAVEATS'
      augenblick draws the overlay through XQuartz, the X server for macOS, which is not part of macOS:
        brew install --cask xquartz
      XQuartz sets DISPLAY only for the sessions started after a logout and login; until then:
        open -a XQuartz
        DISPLAY=:0 augenblick
    CAVEATS
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
