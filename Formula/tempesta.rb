class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.69"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.69/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "118f5003d01fb950838232ce2aa5d59f37b6255e3955085e9c19255b092314d7"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.69/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "118f5003d01fb950838232ce2aa5d59f37b6255e3955085e9c19255b092314d7"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

