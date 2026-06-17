class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.0.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.0.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "40d8d5be0c0450d5a00ac255826c35801b8433663380649a224a9ef9ed536af6"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.0.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "1750ad2d5c99b86c34de0d5090812edad2b80889a02265760f3636ffb6b18a11"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

