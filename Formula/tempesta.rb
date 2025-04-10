class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.62"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.62/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "572137f34edce996a4862d8a8193839405a0020145f282c5fba6d63f1599bf1e"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.62/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "572137f34edce996a4862d8a8193839405a0020145f282c5fba6d63f1599bf1e"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

