class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.29"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.29/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "7729918e4de90a6eb002f9598664fcb126a722a7f9652af5615307807910d646"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.29/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "7729918e4de90a6eb002f9598664fcb126a722a7f9652af5615307807910d646"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

