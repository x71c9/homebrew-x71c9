class Dogma < Formula
  desc "Bridges secrets from vault backends and infrastructure outputs into sops-encrypted files deployed to NixOS machines"
  homepage "https://github.com/x71c9/dogma"
  version "3.4.0"
  url "https://github.com/x71c9/dogma/releases/download/v3.4.0/dogma-x86_64-apple-darwin.tar.gz"
  sha256 "ea4e1844a6a96fa4a6f2cfacbb40a4c20abaeac49efbb28c3c332910b935257d"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/dogma/releases/download/v3.4.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "e578a7ceadfd33f3246539940542bfb3eb8e7a72ebdc96045cfa7a0e1ee20d89"
  end

  def install
    bin.install "dogma"
    generate_completions_from_executable(bin/"dogma", "completions")
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end
