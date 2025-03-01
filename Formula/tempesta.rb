class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.48"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.48/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "5c34fb339eaa4f7416f3ef73c44b4e34229e77c4f40c47b00524bcdaf2285813"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.48/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "5c34fb339eaa4f7416f3ef73c44b4e34229e77c4f40c47b00524bcdaf2285813"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

