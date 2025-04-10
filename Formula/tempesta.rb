class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.73"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.73/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "7b5e4416bb8a3a5c39d48ae493433a53983c15a1fc80a2ee463bb61070dc2494"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.73/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "7b5e4416bb8a3a5c39d48ae493433a53983c15a1fc80a2ee463bb61070dc2494"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

