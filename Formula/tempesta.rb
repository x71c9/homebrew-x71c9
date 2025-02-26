class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.37"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.37/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "813b444d4f06a014a15d3cf91a8618f9828b4b1872d31472394fe988b5f9db7e"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.37/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "813b444d4f06a014a15d3cf91a8618f9828b4b1872d31472394fe988b5f9db7e"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

