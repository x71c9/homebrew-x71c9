class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.71"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.71/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "d80d78b7f7da5fd17b22833d7a8d4c909798e66dbf433f9077fd0d5720c99b7c"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.71/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "d80d78b7f7da5fd17b22833d7a8d4c909798e66dbf433f9077fd0d5720c99b7c"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

