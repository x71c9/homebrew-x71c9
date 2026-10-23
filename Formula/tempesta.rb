class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.4.5"
  url "https://github.com/x71c9/tempesta/releases/download/v0.4.5/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "f868b2cf0f1411522f0a3248496800319665e95dcb55bc0c5e4d5f64c6097110"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.4.5/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "40333d89f50c3184bb4715d1ffcb8e4b98dfce1ea6f2816c4190c9acf4cf536a"
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
