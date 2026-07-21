class Torx < Formula
  desc "BitTorrent client made in rust with concurrent multi-peer downloading"
  homepage "https://github.com/flippedpants/torx"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-aarch64-apple-darwin.tar.gz"
      sha256 "478e47ca7190c7f05d38f23122491cfb7a48d1c6ebdfed20949ab9edbb83eba9"
    else
      url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-x86_64-apple-darwin.tar.gz"
      sha256 "901dc6a9e54c08b908d1a47f900df30fe868ea8cba3a4e91d7d6e9410a3b9944"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
        url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "1bf7969bf701d76109eb2d51a740bffe6cd30eb41d3bb1fd096aa6a08295b0d6"
    else
        url "https://github.com/flippedpants/torx/releases/download/v#{version}/torx-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "c5a5a5f95407d4f7cffc3d80effd55dfbc0eee6986b1693b71fa0c314a7de859"
    end
  end

  def install
    bin.install "torx"
  end

  test do
    system "#{bin}/torx", "--version"
  end
end