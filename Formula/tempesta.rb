class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.80"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.80/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "9c29a6d1f01b1d0c2821f9033ea96d52ee0c2ed3f06209b4a0297c79de9756b6"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.80/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "9c29a6d1f01b1d0c2821f9033ea96d52ee0c2ed3f06209b4a0297c79de9756b6"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

