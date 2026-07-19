class Torx < Formula
  desc "BitTorrent client made in rust with concurrent multi-peer downloading"
  homepage "https://github.com/flippedpants/torx"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-aarch64-apple-darwin.tar.gz"
      sha256 "7c91b41140281f6977b6660ede188163131d6ac084fd63f0a32edf38d41f0704"
    else
      url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-x86_64-apple-darwin.tar.gz"
      sha256 "da4f88d780a52888ed8b769f65a057efe6c79d51859a42efe085ed2edc31bb10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
        url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "06cd3d80e40d7e88e93d5758d71c22cc9dbc2e915b379976fc6ce1ad20e92688"
    else
        url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "cc1c0bd7c36b17fcc79701e0d5ffaae632d1524456957734b963c202b0145884"
    end
  end

  def install
    bin.install "torx"
  end

  test do
    system "#{bin}/torx", "--version"
  end
end