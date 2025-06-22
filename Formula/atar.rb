class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.18"
  url "https://github.com/x71c9/atar/releases/download/v0.1.18/atar-x86_64-apple-darwin.tar.gz"
  sha256 "5df911f51601ccb47a95d8d1a681e37153a07ee11b083928d01e3add42e8a749"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.18/atar-aarch64-apple-darwin.tar.gz"
    sha256 "5df911f51601ccb47a95d8d1a681e37153a07ee11b083928d01e3add42e8a749"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

