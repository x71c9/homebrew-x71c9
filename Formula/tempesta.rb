class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.7"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.7/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "fe371684d5c06cc35065540d2ecd26263b871962ffa6387f28a94361454c0844"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.7/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "fe371684d5c06cc35065540d2ecd26263b871962ffa6387f28a94361454c0844"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

