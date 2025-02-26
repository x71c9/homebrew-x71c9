class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.23"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.23/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "b2170d06bbbaf57f90c502e2ee971a16ad7f8b547d0dde8536ff3b84e1eb8a2f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.23/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "b2170d06bbbaf57f90c502e2ee971a16ad7f8b547d0dde8536ff3b84e1eb8a2f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

