class Hola < Formula
  desc "Single-binary Mac setup tool - Brewfile + mise.toml + dotfiles"
  homepage "https://github.com/ratazzi/hola"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ratazzi/hola/releases/download/v#{version}/hola-macos-aarch64"
      sha256 "6a58126d39e5376832e9d569c71802b7e5164ca2ed3687a981a66ff9f7e0f933"
    end
  end

  def install
    bin.install Dir["hola-*"].first => "hola"
  end

  test do
    system bin/"hola", "--version"
  end
end
