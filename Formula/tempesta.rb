class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.9"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.9/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "12869697acc71aa0d47beeb8efcd43e92f793431658574e9e34ad434f8940518"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.9/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "12869697acc71aa0d47beeb8efcd43e92f793431658574e9e34ad434f8940518"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

