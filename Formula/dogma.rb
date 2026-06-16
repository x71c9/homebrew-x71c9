class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "0.3.1"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v0.3.1/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "84e041ceac03548f99765c4728a0685b2e45a667072fde209d03ebccfb4b3976"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v0.3.1/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "ad8a12324b97f57479347b6b0df2e7616f20fcb9c526c207d73c168dc9c35d1a"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

