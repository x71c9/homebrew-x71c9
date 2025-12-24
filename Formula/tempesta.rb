class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.13"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.13/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "5b0e87d8b7e119d6c0c51d8ec126f6e7a52c69d6e545268bd23039dc4836a62c"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.13/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "5b0e87d8b7e119d6c0c51d8ec126f6e7a52c69d6e545268bd23039dc4836a62c"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

