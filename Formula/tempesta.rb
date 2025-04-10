class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.70"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.70/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "7418d6a0e51b1b58d060e46b4b30f55427137f3e264d38886e2b38fb76fea529"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.70/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "7418d6a0e51b1b58d060e46b4b30f55427137f3e264d38886e2b38fb76fea529"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

