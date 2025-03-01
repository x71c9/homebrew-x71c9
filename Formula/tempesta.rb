class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.49"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.49/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "308ebf71aab34f76b127240cd2d5d149d97bb28a8d625ccabb6975e2799f4f85"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.49/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "308ebf71aab34f76b127240cd2d5d149d97bb28a8d625ccabb6975e2799f4f85"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

