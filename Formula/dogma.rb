class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.6.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.6.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "9b15f5f5c5e6f484a048bad3a885a6852bf35b87066830835310cfc6e3745c91"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.6.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "ce7071e60a92ba5d45524c09d59847863e455879f7fea2690dd20f4b7a52a4ca"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

