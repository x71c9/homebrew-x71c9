class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.29"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.29/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "2a188f2f238de09b1adc7e0892be664a876192090a3f45221b464bdcd29bdab5"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.29/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "2a188f2f238de09b1adc7e0892be664a876192090a3f45221b464bdcd29bdab5"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

