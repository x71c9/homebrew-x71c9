class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.37"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.37/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "9b03f808c7bbeb4ea9c82abfccea321fea40425d083e7b919ab4c90de878a965"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.37/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "9b03f808c7bbeb4ea9c82abfccea321fea40425d083e7b919ab4c90de878a965"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

