class Torx < Formula
  desc "BitTorrent client made in rust with concurrent multi-peer downloading"
  homepage "https://github.com/flippedpants/torx"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-aarch64-apple-darwin.tar.gz"
      sha256 "c614bc427712845096aa149069556b9b34ebbbe028ba6b91a31f8a56add509ae"
    else
      url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-x86_64-apple-darwin.tar.gz"
      sha256 "4f98970e046e7aad37193782b31424196ce6b219d300b06babb450fb4c9d650a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
        url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "6e657244b3af622e18905d87a08b7b0839a426813a652aebffddca9970813eb4"
    else
        url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "ad8721eeb8cdc10ef7385ef496a2ec60f05667a49a0a3e0b78b01f5375193e88"
    end
  end

  def install
    bin.install "torx"
  end

  test do
    system "#{bin}/torx", "--version"
  end
end