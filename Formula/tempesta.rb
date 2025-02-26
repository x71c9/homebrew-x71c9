class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.44"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.44/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "922626f6739055b9307f6f100b45c968308e5982db4d4b6c98afcc92a432d8db"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.44/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "922626f6739055b9307f6f100b45c968308e5982db4d4b6c98afcc92a432d8db"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

