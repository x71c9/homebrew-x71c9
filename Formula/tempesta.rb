class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.10"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.10/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "4b920ff95b1e7fef77d7857b6c3243a25e2167a8f623c2cbf09252f9f8cb64a8"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.10/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "4b920ff95b1e7fef77d7857b6c3243a25e2167a8f623c2cbf09252f9f8cb64a8"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

