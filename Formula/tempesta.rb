class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.77"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.77/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "8c72c90e6e44df64a6cd5953f8336748a25a85d365c410de60d62598b518492c"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.77/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "8c72c90e6e44df64a6cd5953f8336748a25a85d365c410de60d62598b518492c"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

