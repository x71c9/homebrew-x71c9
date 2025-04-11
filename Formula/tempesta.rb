class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.75"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.75/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "9af07b6e5ed540c680c9127fdef576576bf960f1d3877ab6f64d4b76f9c4b20f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.75/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "9af07b6e5ed540c680c9127fdef576576bf960f1d3877ab6f64d4b76f9c4b20f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

