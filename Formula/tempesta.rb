class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.57"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.57/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "3608d3ed82a7079ca01293b29a5988c46167d8250c7410308ad54616f910c7c9"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.57/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "3608d3ed82a7079ca01293b29a5988c46167d8250c7410308ad54616f910c7c9"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

