class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.0"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.0/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "0bb02786600e4829857e6b090c6d14d2eddabb30d957307a9d7ab0a06847cc78"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.0/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "0bb02786600e4829857e6b090c6d14d2eddabb30d957307a9d7ab0a06847cc78"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

