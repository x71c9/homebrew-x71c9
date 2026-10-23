class Dogma < Formula
  desc "Bridges secrets from vault backends and infrastructure outputs into sops-encrypted files deployed to NixOS machines"
  homepage "https://github.com/x71c9/dogma"
  version "3.4.1"
  url "https://github.com/x71c9/dogma/releases/download/v3.4.1/dogma-x86_64-apple-darwin.tar.gz"
  sha256 "3b0a94cb5b4053e9879ac6ad7822d53101f6fddf71be2995d93e40297a885681"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/dogma/releases/download/v3.4.1/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "5ac2740eb37eea7a73d255f153f104495c1d316d39aa5a8cfefbe5022970f77a"
  end

  def install
    bin.install "dogma"
    generate_completions_from_executable(bin/"dogma", "completions")
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end
