class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.34"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.34/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "2e9be9c23d19025bef857eccc0cc7597dcf7443e4757f2c6c719f81661e93cfa"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.34/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "2e9be9c23d19025bef857eccc0cc7597dcf7443e4757f2c6c719f81661e93cfa"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

