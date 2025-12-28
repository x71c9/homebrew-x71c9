class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.24"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.24/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "b45cd9d438d125819bb0332b6471bb39d6f0f249beeed1f41f50139139b36df5"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.24/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "b45cd9d438d125819bb0332b6471bb39d6f0f249beeed1f41f50139139b36df5"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

