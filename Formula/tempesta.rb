class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.45"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.45/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "9570e05d4de7174a373e0862463cdc903ef31916abb86e5299a2f17db08ed0ef"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.45/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "9570e05d4de7174a373e0862463cdc903ef31916abb86e5299a2f17db08ed0ef"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

