class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.3"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.3/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "6eee6d6bc4f4afe3b3319412a423416155f1807b650a4a63d9c8ea9eab695908"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.3/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "6eee6d6bc4f4afe3b3319412a423416155f1807b650a4a63d9c8ea9eab695908"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

