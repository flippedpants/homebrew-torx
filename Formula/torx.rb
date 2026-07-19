class Torx < Formula
  desc "BitTorrent client made in rust with concurrent multi-peer downloading"
  homepage "https://github.com/flippedpants/torx"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-aarch64-apple-darwin.tar.gz"
      sha256 "ebd8f106c9605da18b9a8337a72edec04041d3bd00942a246e5b72852290006a"
    else
      url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-x86_64-apple-darwin.tar.gz"
      sha256 "876b5ec4191d9c9bb8d8b0c5ebc69ace5d218842356c50284aa0dbed503ce78f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
        url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "5753357bfd31437bdf66eb1ca7297b981ea87c1d16ddac38cb8971540a4d1510"
    else
        url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "05e882ac83159fe7d514f012ea383b7a6ad65043a204b42f1f68a17a0b538d4e"
    end
  end

  def install
    bin.install "torx"
  end

  test do
    system "#{bin}/torx", "--version"
  end
end