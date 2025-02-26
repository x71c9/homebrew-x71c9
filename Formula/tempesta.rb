class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.35"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.35/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "1cc3ed6eebf6f065e0a5a4fa3bf85a7b3286ecbffb216f0e4800ae96f304f943"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.35/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "1cc3ed6eebf6f065e0a5a4fa3bf85a7b3286ecbffb216f0e4800ae96f304f943"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

