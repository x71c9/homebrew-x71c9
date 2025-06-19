class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.7"
  url "https://github.com/x71c9/atar/releases/download/v0.1.7/atar-x86_64-apple-darwin.tar.gz"
  sha256 "691e72b3f99fa7c40ad51caa025208a738d9c5e7fad093f5e6c8c967a987b7c1"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.7/atar-aarch64-apple-darwin.tar.gz"
    sha256 "691e72b3f99fa7c40ad51caa025208a738d9c5e7fad093f5e6c8c967a987b7c1"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

