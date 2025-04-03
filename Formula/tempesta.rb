class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.54"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.54/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "9a1a6bd147c0853267528f5aa888250c7779e81c0736da63a4a0888e2ab63c36"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.54/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "9a1a6bd147c0853267528f5aa888250c7779e81c0736da63a4a0888e2ab63c36"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

