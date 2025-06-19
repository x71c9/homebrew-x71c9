class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.5"
  url "https://github.com/x71c9/atar/releases/download/v0.1.5/atar-x86_64-apple-darwin.tar.gz"
  sha256 "c8a3f7d870afcf012c31e39e1ae1d17ba3630c551c70cc1f4d41f5e12246b653"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.5/atar-aarch64-apple-darwin.tar.gz"
    sha256 "c8a3f7d870afcf012c31e39e1ae1d17ba3630c551c70cc1f4d41f5e12246b653"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

