class Hola < Formula
  desc "Single-binary Mac setup tool - Brewfile + mise.toml + dotfiles"
  homepage "https://github.com/ratazzi/hola"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ratazzi/hola/releases/download/v#{version}/hola-macos-aarch64"
      sha256 "dc3e2cd234b0099a0a87625c181e5b32cdec87f4109485ba8480279eafa4e61c"
    end
  end

  def install
    bin.install Dir["hola-*"].first => "hola"
  end

  test do
    system bin/"hola", "--version"
  end
end
