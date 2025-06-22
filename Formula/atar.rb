class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.11"
  url "https://github.com/x71c9/atar/releases/download/v0.1.11/atar-x86_64-apple-darwin.tar.gz"
  sha256 "df667e7f5d4ca58a63d2016b823acee44045c20876ad87ed8b19a0308a980893"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.11/atar-aarch64-apple-darwin.tar.gz"
    sha256 "df667e7f5d4ca58a63d2016b823acee44045c20876ad87ed8b19a0308a980893"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

