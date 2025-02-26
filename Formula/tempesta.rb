class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.39"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.39/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "0cc2f3f416abebab3058308d8c90f9400da6864663e586f36ee8e29a1d4a42cb"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.39/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "0cc2f3f416abebab3058308d8c90f9400da6864663e586f36ee8e29a1d4a42cb"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

