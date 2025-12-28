class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.16"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.16/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "c5c6b5dad0c8d72845685b59bb5fe1d2249baae58301da5fe592d9cac959971f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.16/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "c5c6b5dad0c8d72845685b59bb5fe1d2249baae58301da5fe592d9cac959971f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

