class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.4.1"
  url "https://github.com/x71c9/tempesta/releases/download/v0.4.1/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "eebfac3ed268c909f0439dc1c541b6eb14063726e7c543095fbefa1bf8101950"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.4.1/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "e6d8b4b3f2fffd0fc3f4ddb45e957c10bd70b187628a25b2741e8a007c65a1ee"
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
