class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "0.2.2"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v0.2.2/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "c7b8686ecf13ddb8b0e62e6dfea7eea72ddb2c7151572c35c9beaecaa8becb9c"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v0.2.2/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "abffed2cf99827034669c0212d7df1bb6e55f979f79835f0eed2a506da5fa90a"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

