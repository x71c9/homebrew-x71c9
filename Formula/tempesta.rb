class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.34"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.34/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "6116bcc23dd60670b9637400d15e46553cc2f79177e0fafb000e0ba3914eb512"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.34/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "6116bcc23dd60670b9637400d15e46553cc2f79177e0fafb000e0ba3914eb512"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

