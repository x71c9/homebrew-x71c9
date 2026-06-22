class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.5.2"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.2/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "1fd18cbc6ce90bdbacc78b2a05054db467b2b6169630dd4570ac7171704c6501"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.2/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "b94ee41c28dd7690518e5c1a3e1d24356d0f7d6de7bdaacb6d00bb5e5097969b"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

