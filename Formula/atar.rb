class Atar < Formula
  desc "Ephemeral Terraform runner that applies on start and destroys on exit or failure."
  homepage "https://github.com/x71c9/atar"
  version "0.1.12"
  url "https://github.com/x71c9/atar/releases/download/v0.1.12/atar-x86_64-apple-darwin.tar.gz"
  sha256 "ebadda8c61a1082fb2db50f642a71f93282637f77f5d55714d05a28280d12211"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/atar/releases/download/v0.1.12/atar-aarch64-apple-darwin.tar.gz"
    sha256 "ebadda8c61a1082fb2db50f642a71f93282637f77f5d55714d05a28280d12211"
  end

  def install
    bin.install "atar"
  end

  test do
    system "#{bin}/atar", "--help"
  end
end

