class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.59"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.59/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "9114f55b7b74606a924460dd28d003ddac3b8d698320193405e199828f1fead2"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.59/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "9114f55b7b74606a924460dd28d003ddac3b8d698320193405e199828f1fead2"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

