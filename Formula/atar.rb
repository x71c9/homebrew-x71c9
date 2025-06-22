class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.19"
  url "https://github.com/x71c9/atar/releases/download/v0.1.19/atar-x86_64-apple-darwin.tar.gz"
  sha256 "1a25fb4d0fd0df5ca4af3fbac866992d08145a0d0c2710a5848490efd22012f1"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.19/atar-aarch64-apple-darwin.tar.gz"
    sha256 "1a25fb4d0fd0df5ca4af3fbac866992d08145a0d0c2710a5848490efd22012f1"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

