class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.33"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.33/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "131c2c2b9bb9dcca67d0cd620808c61497ae8197fbe4911da808b6d2c98b7649"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.33/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "131c2c2b9bb9dcca67d0cd620808c61497ae8197fbe4911da808b6d2c98b7649"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

