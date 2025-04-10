class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.65"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.65/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "d286d4b500f9b30e796cbd88cbca24e69ec5728b7f3596bf3c75b155bc3836e3"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.65/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "d286d4b500f9b30e796cbd88cbca24e69ec5728b7f3596bf3c75b155bc3836e3"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

