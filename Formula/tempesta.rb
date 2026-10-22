class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.4.0"
  url "https://github.com/x71c9/tempesta/releases/download/v0.4.0/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "eda84118cbd4805587a7ac2fa583a1a079c0e564270c22bbec3c48a689e2d63b"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.4.0/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "a910c42fbd36007c662399c61d5323180552d4aec09009ef873893c2c82f2a06"
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
