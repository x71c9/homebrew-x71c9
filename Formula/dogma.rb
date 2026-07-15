class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "2.2.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v2.2.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "05446e355309d6fcc70b6c81d41e409a026d0a0d1834714669d3204503bbd360"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v2.2.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "0706136dc99a75b87276964f1e7978f77594d78f4e54cc8c3ef2eaf6f3bb06af"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

