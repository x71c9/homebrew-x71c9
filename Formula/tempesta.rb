class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.38"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.38/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "b06ba07b44fbc5b34f141b4b5b0699b691afef56e9d373d3ab2f4d2b8130cc73"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.38/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "3ed7c45a40e649c100f5f3100dac4b18c2e9709336757588f94a32ff5abfd159"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

