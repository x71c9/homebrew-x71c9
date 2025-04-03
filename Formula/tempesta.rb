class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.56"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.56/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "180c9fb85aa3251b1d32180451dd0ac4c66e1ecda1093d94b27d2a169ac32b9c"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.56/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "180c9fb85aa3251b1d32180451dd0ac4c66e1ecda1093d94b27d2a169ac32b9c"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

