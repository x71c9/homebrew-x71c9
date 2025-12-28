class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.20"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.20/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "86c9ddb58843d4aa2938f3dc80b5d2df76b6ddf355b3adb97f5b0e43edf464f2"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.20/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "86c9ddb58843d4aa2938f3dc80b5d2df76b6ddf355b3adb97f5b0e43edf464f2"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

