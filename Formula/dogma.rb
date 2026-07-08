class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "2.1.5"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.5/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "43bb82c261a6e086a5f25c9d1c6567b8ae66724fe9fdabcdf87edb3bb0e8839a"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.5/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "0be34d61feacaea9e6558dcd708c3c457c05ce087feb8bd96e6d8354972f7d7d"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

