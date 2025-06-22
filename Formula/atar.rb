class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.9"
  url "https://github.com/x71c9/atar/releases/download/v0.1.9/atar-x86_64-apple-darwin.tar.gz"
  sha256 "003a322e6efd98ab4763456f9d016ea5c40614fbac667ec4783105d055027d62"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.9/atar-aarch64-apple-darwin.tar.gz"
    sha256 "003a322e6efd98ab4763456f9d016ea5c40614fbac667ec4783105d055027d62"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

