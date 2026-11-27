class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.6.3"
  url "https://github.com/x71c9/augenblick/releases/download/v0.6.3/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "805f88754dbb049c600cdb6f3788ee82f114af105d91d582f7b9dd50565beae2"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.6.3/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "25cef3f7b24f5faa008b8a27788e8347bd1eac421b679b868e29701d6f7bf796"
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
