class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.58"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.58/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "afa35f37a2eceb0f13fb9fb059fa40dcb8f874d1846a2d866cf0e93303de950b"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.58/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "afa35f37a2eceb0f13fb9fb059fa40dcb8f874d1846a2d866cf0e93303de950b"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

