class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.46"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.46/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "b0181ff696dfc5b786465d40d6e7fdf928162b54c535649aee2e34c5dcd0e636"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.46/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "b0181ff696dfc5b786465d40d6e7fdf928162b54c535649aee2e34c5dcd0e636"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

