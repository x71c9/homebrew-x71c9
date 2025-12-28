class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.28"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.28/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "2ff5ec24908577551e1d5f163edb45eb3d4e58946dce4bb2a45035155b0c800a"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.28/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "2ff5ec24908577551e1d5f163edb45eb3d4e58946dce4bb2a45035155b0c800a"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

