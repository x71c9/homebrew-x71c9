class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.22"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.22/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "1b4a6f79dd29dbfd757cd42fb67be28bbb507175decbf98ee2908625736f9f1d"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.22/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "1b4a6f79dd29dbfd757cd42fb67be28bbb507175decbf98ee2908625736f9f1d"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

