class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.4.4"
  url "https://github.com/x71c9/tempesta/releases/download/v0.4.4/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "fee0b40a0d72cbfc78c5ede4980c36db9778bbb2bd643e1855389930405599d7"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.4.4/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "ba58ab20b76a3fdc057ec3b6ddb5494a86350ca2892c298e8abe2be687494b39"
  end

  def install
    bin.install "tempesta"
    bin.install_symlink "tempesta" => "t"
    bin.install_symlink "tempesta" => "tmps"
    generate_completions_from_executable(bin/"tempesta", "completion")
    generate_completions_from_executable(bin/"tempesta", "completion", base_name: "t")
    generate_completions_from_executable(bin/"tempesta", "completion", base_name: "tmps")
  end

  test do
    system "#{bin}/tempesta", "--version"
  end
end
