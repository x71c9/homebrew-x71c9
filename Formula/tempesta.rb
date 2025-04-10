class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.74"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.74/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "5ce804addbc73288edab39cec69f9d39d30541b634c32335bb9a59f8bd285b2f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.74/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "5ce804addbc73288edab39cec69f9d39d30541b634c32335bb9a59f8bd285b2f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

