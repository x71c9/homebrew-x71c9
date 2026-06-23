class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.5.4"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.4/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "c5de8b809e1274c1ecc6a27f96d232cac0dac08ba53478e2b4f04edefd9e5c02"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.4/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "3b33091230715dd1eeae65bc14644d1129b2c667bbdbee1eadb0aae01411e27c"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

