class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.47"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.47/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "eb05efe89ab5f86e537c83e874fbc556a501ba255ef4bda0cc902b0d30b04eef"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.47/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "eb05efe89ab5f86e537c83e874fbc556a501ba255ef4bda0cc902b0d30b04eef"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

