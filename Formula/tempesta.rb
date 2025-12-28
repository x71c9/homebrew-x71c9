class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.27"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.27/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "8c7548d4d6996481a8d8e0cff60a6e8207d384e162c24616b3676bfc506b5d8d"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.27/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "8c7548d4d6996481a8d8e0cff60a6e8207d384e162c24616b3676bfc506b5d8d"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

