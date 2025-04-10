class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.66"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.66/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "65f0b5ef92391fa94eb8ac1541bac3ff3f440c08ba969280fb85b9999bda730e"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.66/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "65f0b5ef92391fa94eb8ac1541bac3ff3f440c08ba969280fb85b9999bda730e"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

