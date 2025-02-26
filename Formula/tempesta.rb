class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.42"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.42/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "3486cd148aff95bd7b6ba28f110a7c4660643b45f3532b24f03a67b078310b93"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.42/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "3486cd148aff95bd7b6ba28f110a7c4660643b45f3532b24f03a67b078310b93"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

