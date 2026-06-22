class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.5.1"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.1/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "5b51ca2faf169fa476c45aba24ae4c9a7985763357b86605f8bff56b484e684b"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.1/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "e0a4cdff3ec70fe15866e6bb68abc41dcfff9e3b38a151a2a94f2bd08174e77a"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

