class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.9.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.9.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "9ddfd51c997a72f9daef5c071b50094c1a4029796b854c3b3192b8db45f5a665"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.9.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "010a9a81b7355f0c10ceb5b3386ce5f290c42b735b81e546d382823d83d86aa5"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

