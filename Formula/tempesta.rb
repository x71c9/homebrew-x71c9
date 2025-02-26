class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.33"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.33/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "2720572d756e5d17701796972e15a74548689c23ed7784fa890122c8935f137d"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.33/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "2720572d756e5d17701796972e15a74548689c23ed7784fa890122c8935f137d"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

