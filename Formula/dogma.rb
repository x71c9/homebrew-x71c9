class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "2.1.2"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.2/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "67e39f01f02da878de56b4ae4b66c77121e696bd9dc50ae4834c07dedc1edf04"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v2.1.2/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "9ebec142a5fce4639aaafdbc186fc43a01709fa228d3029c005e81c930c72fac"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

