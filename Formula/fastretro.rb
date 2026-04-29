# typed: false
# frozen_string_literal: true

class Fastretro < Formula
  desc "Terminal tool for sprint retrospectives and team health checks"
  homepage "https://github.com/helmedeiros/fastretro-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/helmedeiros/fastretro-cli/releases/download/v1.1.0/fastretro-darwin-amd64.tar.gz"
      sha256 "58a3ad2bdcc5d524cfe528cf0082a765045597bd51b76e4f45bed01f1f7edcd7"

      define_method(:install) do
        bin.install "fastretro-darwin-amd64" => "fastretro"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/helmedeiros/fastretro-cli/releases/download/v1.1.0/fastretro-darwin-arm64.tar.gz"
      sha256 "fa5502c59341b773663761c99aa14eb333cfe0647a3c05c8f93235602148aa74"

      define_method(:install) do
        bin.install "fastretro-darwin-arm64" => "fastretro"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmedeiros/fastretro-cli/releases/download/v1.1.0/fastretro-linux-amd64.tar.gz"
      sha256 "d2eb251176b9158843f88eff815ad1d3ba2b990de987504ba5bc487bff3b52fd"

      define_method(:install) do
        bin.install "fastretro-linux-amd64" => "fastretro"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/helmedeiros/fastretro-cli/releases/download/v1.1.0/fastretro-linux-arm64.tar.gz"
      sha256 "7d7e4af767263e7b4459ee85be646e3c11e3b6a9f01cd45f22277a463c79c0af"

      define_method(:install) do
        bin.install "fastretro-linux-arm64" => "fastretro"
      end
    end
  end

  test do
    system "#{bin}/fastretro", "--help"
  end
end
