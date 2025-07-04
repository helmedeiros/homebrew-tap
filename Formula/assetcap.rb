# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Assetcap < Formula
  desc "Digital Asset Capitalization Management Tool"
  homepage "https://github.com/helmedeiros/digital-asset-capitalization"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/helmedeiros/digital-asset-capitalization/releases/download/v1.1.0/assetcap_darwin_amd64.tar.gz"
      sha256 "16b7ec226edece8b2eb37e8eddcf798b5b230da71945f15a796d8368582f8a65"

      def install
        bin.install "assetcap"
      end
    end
    on_arm do
      url "https://github.com/helmedeiros/digital-asset-capitalization/releases/download/v1.1.0/assetcap_darwin_arm64.tar.gz"
      sha256 "856b0999342ee2168980d4b75cd88c03b6be4121a28660baea72e8d80aafdad8"

      def install
        bin.install "assetcap"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/helmedeiros/digital-asset-capitalization/releases/download/v1.1.0/assetcap_linux_amd64.tar.gz"
        sha256 "855bf3d6f50d2b12da63e980ea53fa82b2094fb7b93d9a6823100a613ceb0f05"

        def install
          bin.install "assetcap"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/helmedeiros/digital-asset-capitalization/releases/download/v1.1.0/assetcap_linux_arm64.tar.gz"
        sha256 "6bfd9537b8020127c8c40266e0c7dda07fc15dd3b85b58d42d3c4fd17520910d"

        def install
          bin.install "assetcap"
        end
      end
    end
  end

  test do
    system "#{bin}/assetcap --help"
  end
end
