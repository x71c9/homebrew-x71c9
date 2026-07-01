class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "2.1.3"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.3/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "94cfe96e2dac0c060283ea254f9d569c62747d7dc72aa05205127319125164f7"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.3/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "66924961d0c578714324a0aeb3aab4cc0ac69ae983fc1c19f58386d5daf42a3f"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

