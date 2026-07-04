class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "2.1.4"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.4/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "2f91d7fbea5e4743946c143736789782ed094f4af89a79a8d897f8acf446692c"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.4/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "da37b17923c6d96a40cfa3da26c89ffbdb4750fa1560c0bd6fab7efa89ace205"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

