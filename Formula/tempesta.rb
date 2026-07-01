class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.40"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.40/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "352c6b6089fbee7c146a077e70c4e0ee132e001ba9e7cf54b60f51ec6e883a72"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.40/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "3450b8f0b19f30dde553d0dc3b0d51aa1fa91ec66b958bce8c98ca6fac9a28f0"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

