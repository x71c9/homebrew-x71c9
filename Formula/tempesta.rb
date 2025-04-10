class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.72"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.72/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "d8a5688f36e47f09a62cbad198247466a60e59716dcedb1e36a327da21dcef17"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.72/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "d8a5688f36e47f09a62cbad198247466a60e59716dcedb1e36a327da21dcef17"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

