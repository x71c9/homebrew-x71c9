class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.4"
  url "https://github.com/x71c9/atar/releases/download/v0.1.4/atar-x86_64-apple-darwin.tar.gz"
  sha256 "6888841794bdbefa973f4f561f60450aabdaae654cdc0b5a379eebf60bb995f5"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.4/atar-aarch64-apple-darwin.tar.gz"
    sha256 "6888841794bdbefa973f4f561f60450aabdaae654cdc0b5a379eebf60bb995f5"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

