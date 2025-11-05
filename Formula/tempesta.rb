class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.8"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.8/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "8051141d87b041a66f1b4c3595a7da8bd03fcd8447df4fbd3ca796b97b5b1364"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.8/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "8051141d87b041a66f1b4c3595a7da8bd03fcd8447df4fbd3ca796b97b5b1364"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

