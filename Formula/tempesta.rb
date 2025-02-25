class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.6"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.6/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "a385afa03bd7a63adf343ca79b9072eea3766253f50c92f36340840d82d9ac6a"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.6/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "a385afa03bd7a63adf343ca79b9072eea3766253f50c92f36340840d82d9ac6a"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

