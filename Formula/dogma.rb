class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.8.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.8.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "b64bd09fdd8b7d57b90fc00d3cb37e5bbd43c6b63cd0ca84a7e0b24860fcf6e0"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.8.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "f94fc52704d60eba48603d9b43bfb774bb845c537e9307c6a4f6bcc711deaead"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

