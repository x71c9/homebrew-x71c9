class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.28"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.28/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "0b6d7502b3f05338de3a114042f65f282f46d8f2249c5ebabd692890ae98bccd"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.28/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "0b6d7502b3f05338de3a114042f65f282f46d8f2249c5ebabd692890ae98bccd"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

