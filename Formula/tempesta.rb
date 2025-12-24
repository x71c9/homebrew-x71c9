class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.12"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.12/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "3781fb4fbeafbe11fb06ce7edae4cef661128424c30f307f011e0dc3a6d1d37f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.12/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "3781fb4fbeafbe11fb06ce7edae4cef661128424c30f307f011e0dc3a6d1d37f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

