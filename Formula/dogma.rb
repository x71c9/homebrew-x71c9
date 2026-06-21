class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.5.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "1314fdbe3072aa35e573e67df92730fe2b4c00e0cb0011ad3e5f7ee5ff940e19"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.5.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "fb685e672e302ef7808ebd41cdf9e4ea3e64314bc72c8e23600b79450e7ba29a"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

