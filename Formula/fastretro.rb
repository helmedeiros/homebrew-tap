# typed: false
# frozen_string_literal: true

class Fastretro < Formula
  desc "Terminal tool for sprint retrospectives and team health checks"
  homepage "https://github.com/helmedeiros/fastretro-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmedeiros/fastretro-cli/releases/download/v1.0.0/fastretro-darwin-amd64.tar.gz"
      sha256 "54b000378608d30094ac523039c47b56816b2a9b3686d1ddfba1ff1b3cb65e4b"

      define_method(:install) do
        bin.install "fastretro-darwin-amd64" => "fastretro"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmedeiros/fastretro-cli/releases/download/v1.0.0/fastretro-darwin-arm64.tar.gz"
      sha256 "f324f73d15db53a67227cd758102443ed81e92cb47128f83daf8cc716676ec62"

      define_method(:install) do
        bin.install "fastretro-darwin-arm64" => "fastretro"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmedeiros/fastretro-cli/releases/download/v1.0.0/fastretro-linux-amd64.tar.gz"
      sha256 "11f09f5e2d3cffe2d2dc09fc35d00f0e8f86ce1560d5e01af0d2c237d7e73fc9"

      define_method(:install) do
        bin.install "fastretro-linux-amd64" => "fastretro"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmedeiros/fastretro-cli/releases/download/v1.0.0/fastretro-linux-arm64.tar.gz"
      sha256 "a8ea71ad2c1bc20ece2f3f101dd6db2bb011683836e91cc6bf89e8eba8fa336e"

      define_method(:install) do
        bin.install "fastretro-linux-arm64" => "fastretro"
      end
    end
  end

  test do
    system "#{bin}/fastretro", "--help"
  end
end
