class Dogma < Formula
  desc "Bridges secrets from vault backends and infrastructure outputs into sops-encrypted files deployed to NixOS machines"
  homepage "https://github.com/x71c9/dogma"
  version "3.2.2"
  url "https://github.com/x71c9/dogma/releases/download/v3.2.2/dogma-x86_64-apple-darwin.tar.gz"
  sha256 "ec64ba97f287fcec7645b121addd1a7dbaa607a77459bd25713786b82ce70f3b"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/dogma/releases/download/v3.2.2/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "151596a51fb47049df6f25d9219242a8967acaf1c9a9bbdd5fdcd69b2110232e"
  end

  def install
    bin.install "dogma"
    generate_completions_from_executable(bin/"dogma", "completions")
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end
