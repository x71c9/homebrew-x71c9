class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.30"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.30/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "332fc7cd49e490769ae6755ae64ec64f688bcb54e7b66ef0e17d5e7aabf811d1"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.30/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "332fc7cd49e490769ae6755ae64ec64f688bcb54e7b66ef0e17d5e7aabf811d1"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

