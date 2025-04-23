class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.78"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.78/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "edf54e98c1ad6a110e5dbb9aafeca25a779a07e610c2ecbdcc54d3a21d69cfa8"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.78/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "edf54e98c1ad6a110e5dbb9aafeca25a779a07e610c2ecbdcc54d3a21d69cfa8"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

