class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.3.0"
  url "https://github.com/x71c9/tempesta/releases/download/v0.3.0/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "95998ab77a4a3437afce82130e5238aa757b8c729c7bbf5a16e7cf8c3842a4d5"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.3.0/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "3083044580b76ff3735116abd2372b13ce35f8a7b14bc0bd55fd14e2ff7e385e"
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
