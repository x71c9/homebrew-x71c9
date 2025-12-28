class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.32"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.32/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "4bb9fa7c3e42bcbc02d778efb56a821ce2387878f40be2f02b92cf7d1bbaec7f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.32/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "4bb9fa7c3e42bcbc02d778efb56a821ce2387878f40be2f02b92cf7d1bbaec7f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

