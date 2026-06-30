class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "2.1.1"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.1/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "bcf236c91ad1e94243f294e25f7c733659e41ba6a69ab0f15a07e0c168f4ba64"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.1/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "fc14a39630939dcd13083fc675c3ec31af557e05d35996122c1a680ebfb9837e"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

