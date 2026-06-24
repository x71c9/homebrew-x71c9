class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.7.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.7.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "125d2eb5cb4b371110b20f8b1c19e45b9fe167877b2b9010ecc618e3784b4264"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.7.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "e25a842eb136e82895677a9e0c48101950e1ec56a8832ab0f241574e43a3f10c"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

