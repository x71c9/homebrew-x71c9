class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.13"
  url "https://github.com/x71c9/atar/releases/download/v0.1.13/atar-x86_64-apple-darwin.tar.gz"
  sha256 "542e8cf13d01ed20de8b254d67a9468c771e4e72d56737428325cd9686c45d95"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.13/atar-aarch64-apple-darwin.tar.gz"
    sha256 "542e8cf13d01ed20de8b254d67a9468c771e4e72d56737428325cd9686c45d95"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

