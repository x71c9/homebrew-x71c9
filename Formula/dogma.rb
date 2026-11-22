class Dogma < Formula
  desc "Bridges secrets from vault backends and infrastructure outputs into sops-encrypted files deployed to NixOS machines"
  homepage "https://github.com/x71c9/dogma"
  version "3.4.2"
  url "https://github.com/x71c9/dogma/releases/download/v3.4.2/dogma-x86_64-apple-darwin.tar.gz"
  sha256 "59f660cfc8aec858514ed8b53b1e063f75f0a6f24ada89d6c6ee136ff1379def"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/dogma/releases/download/v3.4.2/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "ea50c34522aaf2fa037a6116e7024a7631d0c0ca7abf992645cf0be64d6c40bb"
  end

  def install
    bin.install "dogma"
    generate_completions_from_executable(bin/"dogma", "completions")
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end
