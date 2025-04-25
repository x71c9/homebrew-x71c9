class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.79"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.79/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "a441aaf2480c4fe15e28f3d5740e2ff78e70df825617c0d2ff519770f83016ec"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.79/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "a441aaf2480c4fe15e28f3d5740e2ff78e70df825617c0d2ff519770f83016ec"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

