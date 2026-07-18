class Torx < Formula
  desc "BitTorrent client made in rust with concurrent multi-peer downloading"
  homepage "https://github.com/flippedpants/torx"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yourusername/torx/releases/download/v#{version}/torx-aarch64-apple-darwin.tar.gz"
      sha256 ""
    else
      url "https://github.com/yourusername/torx/releases/download/v#{version}/torx-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
        url "https://github.com/yourusername/torx/releases/download/v#{version}/torx-aarch64-unknown-linux-gnu.tar.gz"
        sha256 ""
    else
        url "https://github.com/yourusername/torx/releases/download/v#{version}/torx-x86_64-unknown-linux-gnu.tar.gz"
        sha256 ""
    end
  end

  def install
    bin.install "torx"
  end

  test do
    system "#{bin}/torx", "--version"
  end
end