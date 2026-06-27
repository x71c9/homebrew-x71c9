class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "2.0.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v2.0.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "c08a6638bda315d725427a9eb2c8649a2e767ef934dcd6c8207fe621fb10cc96"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v2.0.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "547979cae979b5f14ec53446c034d8855da08e169979a2ea424404baaef30ed8"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

