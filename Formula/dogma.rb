class Dogma < Formula
  desc "Bridges secrets from vault backends and infrastructure outputs into sops-encrypted files deployed to NixOS machines"
  homepage "https://github.com/x71c9/dogma"
  version "3.2.0"
  url "https://github.com/x71c9/dogma/releases/download/v3.2.0/dogma-x86_64-apple-darwin.tar.gz"
  sha256 "996bfbd149985ba437006da9d0170b707a80066804ee2bf8b8ecb416b6b364cb"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/dogma/releases/download/v3.2.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "1f0114c0c27ec51e8e2c3d6f4ccd16d1e710eb515d8c878c0b1181895ac59428"
  end

  def install
    bin.install "dogma"
    generate_completions_from_executable(bin/"dogma", "completions")
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end
