class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.2.2"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.2.2/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "9050db718a4c05d32e811099a741a8a59d74aa10b98d9f57ff0df2937aec7094"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.2.2/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "ece3dfe6c506db652bbd73b821bd9e9515ba3612543c29ba315370da03d6770b"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

