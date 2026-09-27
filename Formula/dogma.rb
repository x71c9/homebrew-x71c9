class Dogma < Formula
  desc "Bridges secrets from vault backends and infrastructure outputs into sops-encrypted files deployed to NixOS machines"
  homepage "https://github.com/x71c9/dogma"
  version "3.2.1"
  url "https://github.com/x71c9/dogma/releases/download/v3.2.1/dogma-x86_64-apple-darwin.tar.gz"
  sha256 "61868cd312e8353419fd4132976497156af95238f1ea994b6dec761d10e412fd"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/dogma/releases/download/v3.2.1/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "53c94fd954e80868ae7b174a8d15a76a785705a99a01f24af60c4d4da04a4fee"
  end

  def install
    bin.install "dogma"
    generate_completions_from_executable(bin/"dogma", "completions")
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end
