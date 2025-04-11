class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.76"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.76/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "b8963e7257e2eb9cf7ec9b408e44ec45e84bd3a5c777d38c0b3bf0364deb8752"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.76/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "b8963e7257e2eb9cf7ec9b408e44ec45e84bd3a5c777d38c0b3bf0364deb8752"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

