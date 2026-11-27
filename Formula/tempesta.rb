class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.4.6"
  url "https://github.com/x71c9/tempesta/releases/download/v0.4.6/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "50370848face5aac07c980ee987ae14b04c139114508bf1b5e59126c461a6a04"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.4.6/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "3fda0dc59ffdc9b5722e0a4e1c2b157935f1e8d7fc8ea4195feec1ba407b37bd"
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
