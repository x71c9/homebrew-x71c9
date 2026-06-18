class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.1.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.1.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "49b2de8ce191b61b3e97fcd86ce2dd7e9cadde906684203c393cabdad36cbe27"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.1.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "aeab94c00e5dd99ab8b871f05518c08a4053d775db829aa4056de879e00da169"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

