class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.5"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.5/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "be3c609b2d7dddc30f70f333d0bef085849ff4e64bab5c902cb29cfa5fcaf53d"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.5/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "be3c609b2d7dddc30f70f333d0bef085849ff4e64bab5c902cb29cfa5fcaf53d"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

