class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.50"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.50/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "c48af42ac2510e841154a8ae4808ca95eeec93d8f3ec8064871bda1b67fc7592"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.50/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "c48af42ac2510e841154a8ae4808ca95eeec93d8f3ec8064871bda1b67fc7592"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

