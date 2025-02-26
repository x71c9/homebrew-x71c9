class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.26"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.26/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "575e26b781f1768f6e71235d216c0a3e0b2c04efa39148a41c5a85e2ab4c121f"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.26/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "575e26b781f1768f6e71235d216c0a3e0b2c04efa39148a41c5a85e2ab4c121f"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

