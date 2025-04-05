class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.61"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.61/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "b4503e679e5a7248296e4a5e8c7e25828e6659d7fa52f7332ba8dd21289fad3b"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.61/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "b4503e679e5a7248296e4a5e8c7e25828e6659d7fa52f7332ba8dd21289fad3b"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

