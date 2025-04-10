class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.68"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.68/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "62971828619e9c61ca08e3c407c5d4d80b03a5a0481b13c12462f1c4cf5ded90"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.68/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "62971828619e9c61ca08e3c407c5d4d80b03a5a0481b13c12462f1c4cf5ded90"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

