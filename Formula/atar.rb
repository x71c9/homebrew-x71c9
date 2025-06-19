class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.6"
  url "https://github.com/x71c9/atar/releases/download/v0.1.6/atar-x86_64-apple-darwin.tar.gz"
  sha256 "6ab3cae4bd14bf10a02bcc970a355335f24807e94e0bc021915190fe53056fde"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.6/atar-aarch64-apple-darwin.tar.gz"
    sha256 "6ab3cae4bd14bf10a02bcc970a355335f24807e94e0bc021915190fe53056fde"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

