class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.64"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.64/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "026e9b8b039ecaeb410f2cd22606e9b5e8db51a46f9bb20803db02a86ddf39e1"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.64/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "026e9b8b039ecaeb410f2cd22606e9b5e8db51a46f9bb20803db02a86ddf39e1"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

