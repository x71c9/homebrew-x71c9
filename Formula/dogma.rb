class Dogma < Formula
  desc "CLI to bridge secrets from any vault backend and infra outputs into sops-encrypted files, deployed to your machines — driven by a single dogma.yml"
  homepage "https://github.com/x71c9/dogma"
  version "1.2.0"

  on_intel do
    url "https://github.com/x71c9/dogma/releases/download/v1.2.0/dogma-x86_64-apple-darwin.tar.gz"
    sha256 "03f1a61370e10c8e928117bec4adc23de711985f8b1aab82e51665bdf55c0762"
  end

  on_arm do
    url "https://github.com/x71c9/dogma/releases/download/v1.2.0/dogma-aarch64-apple-darwin.tar.gz"
    sha256 "380ff38d873cb78d6e6225582136c94902dab4411aab5f92ac9e71222d2f451f"
  end

  def install
    bin.install "dogma"
  end

  test do
    system "#{bin}/dogma", "--version"
  end
end

