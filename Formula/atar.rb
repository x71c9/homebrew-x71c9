class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.0.1"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.1/atar-x86_64-apple-darwin.tar.gz"
  sha256 "SHA256_OF_BINARY_x86_64"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.1/atar-aarch64-apple-darwin.tar.gz"
    sha256 "SHA256_OF_BINARY_AARCH64"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

