class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.6"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.6/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "5fac78d622b559e84d63b33b52184d31426ae0e1071bcc4a64d19e32c8de7fd2"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.6/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "5fac78d622b559e84d63b33b52184d31426ae0e1071bcc4a64d19e32c8de7fd2"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

