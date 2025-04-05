class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.60"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.60/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "68b8fc75435d1fce9c8cdf3897152634ee6108d595637b430e7bd148ddf8389f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.60/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "68b8fc75435d1fce9c8cdf3897152634ee6108d595637b430e7bd148ddf8389f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

