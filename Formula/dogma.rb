class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.4.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.4.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "ab16b41b2fe2825208d80d0190668827e1441aee29c904ca1bf4e70e70451d16"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.4.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "a161f75146f7adcf7594a497695a12572abd7154dfc0bd2c439816c6af8c9ded"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

