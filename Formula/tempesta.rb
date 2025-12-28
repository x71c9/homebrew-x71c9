class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.23"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.23/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "efe28312e6eb9e2de49fd2a5f69046454e3754432abb44f25b4e4d8e6bc8109a"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.23/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "efe28312e6eb9e2de49fd2a5f69046454e3754432abb44f25b4e4d8e6bc8109a"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

