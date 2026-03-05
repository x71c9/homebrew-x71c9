class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.36"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.36/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "c9c1d62307ede58ad5c195984f700578ac6325b9bd5f67060d7c821d9e5a790f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.36/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "c9c1d62307ede58ad5c195984f700578ac6325b9bd5f67060d7c821d9e5a790f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

