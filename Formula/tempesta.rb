class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.19"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.19/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "26720caddd860996dc675561a69874278c5eb85d237787fe4d712911d8cabf30"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.19/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "26720caddd860996dc675561a69874278c5eb85d237787fe4d712911d8cabf30"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

