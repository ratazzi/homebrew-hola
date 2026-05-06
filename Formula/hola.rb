class Hola < Formula
  desc "Single-binary Mac setup tool - Brewfile + mise.toml + dotfiles"
  homepage "https://github.com/ratazzi/hola"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ratazzi/hola/releases/download/v#{version}/hola-macos-aarch64"
      sha256 "325291fd76cecf8a863f3ffb0a26659491f57a2dbd4c38b8de465c591196aee9"
    end
  end

  def install
    bin.install Dir["hola-*"].first => "hola"
  end

  test do
    system bin/"hola", "--version"
  end
end
