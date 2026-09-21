class Dogma < Formula
  desc "Bridges secrets from vault backends and infrastructure outputs into sops-encrypted files deployed to NixOS machines"
  homepage "https://github.com/x71c9/dogma"
  version "3.1.0"
  url "https://github.com/x71c9/dogma/releases/download/v3.1.0/dogma-x86_64-apple-darwin.tar.gz"
  sha256 "24d707bfee944e7c8716b6e246399c87fa55070766c5edee3c73747cf8b42f8c"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/dogma/releases/download/v3.1.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "f7e7b79942d19e49e327bcbdf4436bcc1e68f9b49203460f40ed8ce20393a4b0"
  end

  def install
    bin.install "dogma"
    generate_completions_from_executable(bin/"dogma", "completions")
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end
