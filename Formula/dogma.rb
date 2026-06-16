class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "0.3.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v0.3.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "69b9919971fbfc8868b8b2db7066b8b7eef8c0beb8848252e5a574580b2c53c5"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v0.3.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "3d4e702aa9ac53cfde36b8998e3efbd12353f53575d389b27790d8e3f86f9967"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

