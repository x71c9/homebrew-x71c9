class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.8"
  url "https://github.com/x71c9/atar/releases/download/v0.1.8/atar-x86_64-apple-darwin.tar.gz"
  sha256 "d28942e1d347fa3b6fd8f599ee38b9411cae07b5a8d7dac51f29e7f49a186315"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.8/atar-aarch64-apple-darwin.tar.gz"
    sha256 "d28942e1d347fa3b6fd8f599ee38b9411cae07b5a8d7dac51f29e7f49a186315"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

