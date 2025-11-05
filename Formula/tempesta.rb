class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.4"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.4/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "e31f34cfd211746a75b0022d3607333fbf61dc33f65fb351fffca294543718a2"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.4/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "e31f34cfd211746a75b0022d3607333fbf61dc33f65fb351fffca294543718a2"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

