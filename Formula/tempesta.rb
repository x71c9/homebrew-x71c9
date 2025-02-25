class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.5"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.5/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "SHA256_OF_BINARY_x86_64"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.5/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "SHA256_OF_BINARY_AARCH64"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

