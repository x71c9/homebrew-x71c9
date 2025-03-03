class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.53"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.53/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "a538a89dc7284c8bacab912f33db9032da7ed3b1e5f493fc43bf4b31436b713f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.53/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "a538a89dc7284c8bacab912f33db9032da7ed3b1e5f493fc43bf4b31436b713f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

