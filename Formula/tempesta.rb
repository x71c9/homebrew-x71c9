class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.67"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.67/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "df5b5f847156248fb0590be6c79f434c0bef2eab26173502672cf002b5011eee"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.67/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "df5b5f847156248fb0590be6c79f434c0bef2eab26173502672cf002b5011eee"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

