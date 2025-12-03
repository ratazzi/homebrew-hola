class Hola < Formula
  desc "Single-binary Mac setup tool - Brewfile + mise.toml + dotfiles"
  homepage "https://github.com/ratazzi/hola"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ratazzi/hola/releases/download/v#{version}/hola-macos-aarch64"
      sha256 "e6b6733408cc29bbf78a2d7179b2d9c9c3fb25dd41f49607f1474acdae694d56"
    end
  end

  def install
    bin.install Dir["hola-*"].first => "hola"
  end

  test do
    system bin/"hola", "--version"
  end
end
