class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.2"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.2/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "b16351f73b47beb50fc5e0219c90a2aa958ed7867218c921278353a4259bac03"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.2/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "b16351f73b47beb50fc5e0219c90a2aa958ed7867218c921278353a4259bac03"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

