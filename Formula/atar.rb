class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.24"
  url "https://github.com/x71c9/atar/releases/download/v0.1.24/atar-x86_64-apple-darwin.tar.gz"
  sha256 "a3c2d82cd2c02c1fd9bc8742410d569e0a0966e81a4afb000115e2c38e9830f9"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.24/atar-aarch64-apple-darwin.tar.gz"
    sha256 "a3c2d82cd2c02c1fd9bc8742410d569e0a0966e81a4afb000115e2c38e9830f9"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

