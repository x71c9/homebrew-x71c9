class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.4.3"
  url "https://github.com/x71c9/tempesta/releases/download/v0.4.3/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "a72e8b0c87c42aadf1ab54f5d8e16aa92c7cd9497f1bbc7d86b1343c15c0eefc"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.4.3/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "7964bd300c2bddf09fa8a514bdee989e3fa97bf8fbd57ee87d3dd60caa02145f"
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
