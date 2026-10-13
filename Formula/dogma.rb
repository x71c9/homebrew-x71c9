class Dogma < Formula
  desc "Bridges secrets from vault backends and infrastructure outputs into sops-encrypted files deployed to NixOS machines"
  homepage "https://github.com/x71c9/dogma"
  version "3.3.0"
  url "https://github.com/x71c9/dogma/releases/download/v3.3.0/dogma-x86_64-apple-darwin.tar.gz"
  sha256 "7d9e627742b3f8498f49ac5e737c3b4e7743de975a3630c0606b9cd4c0fad6f0"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/dogma/releases/download/v3.3.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "bf4b9720280d8b0224f8cf3c08c41ad0c5b7ed770e984c98a105b2bc7ee953cc"
  end

  def install
    bin.install "dogma"
    generate_completions_from_executable(bin/"dogma", "completions")
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end
