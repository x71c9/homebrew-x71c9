class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.30"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.30/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "b01e19d53a79368566212f719da6df5bc623d7656981e2a9ca1d9581d7ea22fd"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.30/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "b01e19d53a79368566212f719da6df5bc623d7656981e2a9ca1d9581d7ea22fd"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

