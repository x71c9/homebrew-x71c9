class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.1.39"
  url "https://github.com/x71c9/tempesta/releases/download/v0.1.39/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "9d4d935e9fabd511a19080fbb688292521f8b9be7e846c531ba6e71206d957e0"
  
  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.1.39/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "5df9c8ab828bbf7759caff90af1d7892f5d60ff388575c8ca13006f71c18931e"
  end

  def install
    bin.install "tempesta"
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end

