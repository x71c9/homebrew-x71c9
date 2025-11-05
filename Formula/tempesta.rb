class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.7"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.7/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "8dc6873d921b4f5d421dd9ae6c2b9cc5f28dd1dcbad81c97812758d246eacf6d"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.7/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "8dc6873d921b4f5d421dd9ae6c2b9cc5f28dd1dcbad81c97812758d246eacf6d"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

