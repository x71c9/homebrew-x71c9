class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.21"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.21/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "476be09282b63d260b5b8d982b791130ea469e033974fef5319e8e9d8d50d161"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.21/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "476be09282b63d260b5b8d982b791130ea469e033974fef5319e8e9d8d50d161"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

