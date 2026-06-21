class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.3.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.3.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "c034234412303f8fc7c30802fad23ff0398d09d4429405953ea5f9a2949e67a5"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.3.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "e4514ade5b6f28ed617cf1e11379acf63781fe6b17e40983cb03f268b64c9f58"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

