class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.27"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.27/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "2fde23149a73d573b33fb9d2014360da0827bf926e465c82afe9096dedad750d"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.27/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "2fde23149a73d573b33fb9d2014360da0827bf926e465c82afe9096dedad750d"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

