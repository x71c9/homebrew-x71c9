class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.2.1"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.2.1/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "4af1fffde382058cadf26189079e187a43844da1d760b0a26379420a698bd278"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.2.1/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "141b2dccbf95b738591fe54630eed7197e32a24a695b8d01ebbff50e384c4c24"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

