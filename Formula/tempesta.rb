class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.21"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.21/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "a094afe4f6d2cce0e186f5c3fe58f5cf659ffb479ed2e8a204bbce8f3f64c1b4"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.21/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "a094afe4f6d2cce0e186f5c3fe58f5cf659ffb479ed2e8a204bbce8f3f64c1b4"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

