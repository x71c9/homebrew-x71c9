class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.26"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.26/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "f1c8b51070ce6fd96d50bdbe69174b909843a14685f098df798f6719a1b3027e"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.26/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "f1c8b51070ce6fd96d50bdbe69174b909843a14685f098df798f6719a1b3027e"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

