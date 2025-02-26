class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.40"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.40/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "2c7871928cb508aa1101ac758ba3b4bb4a6af45cd6412fa9ee9c905aacc72a41"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.40/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "2c7871928cb508aa1101ac758ba3b4bb4a6af45cd6412fa9ee9c905aacc72a41"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

