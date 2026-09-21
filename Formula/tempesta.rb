class Tempesta < Formula
  desc "The fastest and lightest bookmark manager CLI written in Rust"
  homepage "https://github.com/x71c9/tempesta"
  version "0.2.0"
  url "https://github.com/x71c9/tempesta/releases/download/v0.2.0/tempesta-x86_64-apple-darwin.tar.gz"
  sha256 "41631ad6726e8ede8abea96dcb286d2c1b62bf0b9a60452d295d1babdeb6c590"

  if Hardware::CPU.arm?
    url "https://github.com/x71c9/tempesta/releases/download/v0.2.0/tempesta-aarch64-apple-darwin.tar.gz"
    sha256 "89038eff2b9cf4c1bdd5082e7c1a9971eafee44b2f83fcee244eba1ac7909f37"
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
