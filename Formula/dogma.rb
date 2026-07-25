class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "3.0.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v3.0.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "8e37f2b7e60e09a267db76cbbaa379c696c3175cd5b306b21b15f4230a22d842"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v3.0.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "dfc469a1db5ecd27f829e70a81a5240e89432cfd039cda38f5b2206033926fcc"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

