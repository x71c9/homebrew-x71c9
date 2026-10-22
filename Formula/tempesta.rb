class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.4.2"
  url "https://github.com/x71c9/tempesta/releases/download/v0.4.2/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "b338d7b40ae49245928da72ce58b37ff7254ba8872d2190714ef74bdbdc891aa"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.4.2/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "212f6c241512ca811caa41ce482ee1234aa73cdc8a7b15983eb4dcbd17ac9dfc"
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
