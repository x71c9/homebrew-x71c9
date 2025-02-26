class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.31"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.31/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "8ea59b980d6fe24e1109044acc3daf9ebd00a395aa5e631ab588f3f3ba27a6ac"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.31/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "8ea59b980d6fe24e1109044acc3daf9ebd00a395aa5e631ab588f3f3ba27a6ac"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

