class Augenblick < Formula
  desc "Fullscreen eye-blink overlay for X11 and Wayland"
  homepage "https://github.com/x71c9/augenblick"
  version "0.2.12"
  url "https://github.com/x71c9/augenblick/releases/download/v0.2.12/augenblick-x86_64-apple-darwin.tar.gz"
  sha256 "ed230e2e1376ec148c624196986a6a1e36fc954e064d729978bfbbf08f4a774a"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/augenblick/releases/download/v0.2.12/augenblick-aarch64-apple-darwin.tar.gz"
    sha256 "0c6cf7d754429dce6512bbf7abf47534af2eee1dd2cdcf840022995549b47c1d"
  end

  def install
    bin.install "augenblick"
  end

  test do
    system "#{bin}/augenblick", "--version"
  end
end
