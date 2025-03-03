class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.52"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.52/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "036cb8fab1cf03d4969fc1dd0823c7757f612e4424d1401334e778b231588768"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.52/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "036cb8fab1cf03d4969fc1dd0823c7757f612e4424d1401334e778b231588768"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

