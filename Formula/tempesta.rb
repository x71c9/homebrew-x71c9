class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.38"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.38/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "4fa3518c0d049f99d83dc0113aa6b6da2fb4ebf77699867b65452e61b27f86e0"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.38/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "4fa3518c0d049f99d83dc0113aa6b6da2fb4ebf77699867b65452e61b27f86e0"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

