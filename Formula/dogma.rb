class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "0.1.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v0.1.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "placeholder_x86_64"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v0.1.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "placeholder_aarch64"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

