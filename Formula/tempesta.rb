class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.22"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.22/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "0191652409c278d91d5a8e7055b035ec594caa6d9e0935b831a93961ef7d822d"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.22/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "0191652409c278d91d5a8e7055b035ec594caa6d9e0935b831a93961ef7d822d"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

