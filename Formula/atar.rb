class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.10"
  url "https://github.com/x71c9/atar/releases/download/v0.1.10/atar-x86_64-apple-darwin.tar.gz"
  sha256 "7cfb7e1d047e2cbadc066a3c645175446a6a3d96aa5ea2fb41fcd100fcb5d2e2"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.10/atar-aarch64-apple-darwin.tar.gz"
    sha256 "7cfb7e1d047e2cbadc066a3c645175446a6a3d96aa5ea2fb41fcd100fcb5d2e2"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

