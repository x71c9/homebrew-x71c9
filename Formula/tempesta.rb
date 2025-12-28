class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.25"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.25/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "e57ed25052ede0db95e49cf8fd87d0965986daabcd3b483d7a52c59ba1868b14"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.25/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "e57ed25052ede0db95e49cf8fd87d0965986daabcd3b483d7a52c59ba1868b14"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

