class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.55"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.55/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "61837bb605b68ffc307e656be2f3612e99a7bee9f97255ef9544268236d34969"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.55/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "61837bb605b68ffc307e656be2f3612e99a7bee9f97255ef9544268236d34969"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

