class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "2.1.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "6233a05e6600531ed70260e66214351e82cff8dd0853b16522d0bffa1d287a72"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "540e8f24d95dcef0009b0a10bbfaf5c0761a6617761bd00d437d09b535be1991"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

