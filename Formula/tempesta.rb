class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.36"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.36/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "563c8ef07703a8aa0afaa9caef84eb8ba506a8bc54592f2de94c5b67c2888407"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.36/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "563c8ef07703a8aa0afaa9caef84eb8ba506a8bc54592f2de94c5b67c2888407"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

