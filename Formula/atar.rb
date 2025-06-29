class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.25"
  url "https://github.com/x71c9/atar/releases/download/v0.1.25/atar-x86_64-apple-darwin.tar.gz"
  sha256 "42f608e4f3c95462b31dba4e4973d275781f1edcb7f75dafb15787e89303d24c"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.25/atar-aarch64-apple-darwin.tar.gz"
    sha256 "42f608e4f3c95462b31dba4e4973d275781f1edcb7f75dafb15787e89303d24c"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

