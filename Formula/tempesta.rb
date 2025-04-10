class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.0.63"
  url "https://github.com/x71c9/tempesta/releases/download/v0.0.63/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "016f7203a1a49912d4714236d85c95da55d770abf58180f081286121517b0af0"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.0.63/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "016f7203a1a49912d4714236d85c95da55d770abf58180f081286121517b0af0"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

