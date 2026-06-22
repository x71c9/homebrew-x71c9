class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.5.3"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.3/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "4121fae2c3e24576f041b1d88c5365f0f4e83901f73d143fa859af1a83b2d5df"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.3/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "fafc27b7da47e5b7dac5fdcf21fa1635f38ab330a75d4c68df91b054b13fe7a6"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

