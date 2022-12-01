# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tmctl < Formula
  desc "tmctl"
  homepage "https://github.com/triggermesh/tmctl"
  version "1.0.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_macOS_arm64"
      sha256 "45952bbcc72992429bceb8dc0ba33a5c7d68cbea9bb058288c14c26c2f13b2c9"

      def install
        bin.install "tmctl_macOS_arm64" => "tmctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_macOS_amd64"
      sha256 "2034eb3b6b7cd37546d2197638aa0819c4c854700515a153b5b95f52265749b9"

      def install
        bin.install "tmctl_macOS_amd64" => "tmctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_linux_amd64"
      sha256 "47ff1141f66a3c1a9a588ba6de6c31e37cd7d75a5274b36586aa4110caf553ac"

      def install
        bin.install "tmctl_linux_amd64" => "tmctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_linux_armv6"
      sha256 "b9e5559e625e4515915a4a9364049b3ec7a84d6b5bddaf083379061447f946a8"

      def install
        bin.install "tmctl_linux_armv6" => "tmctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_linux_arm64"
      sha256 "0b656322074486d0b2697aac8349afff015291264530167836da344669ba7787"

      def install
        bin.install "tmctl_linux_arm64" => "tmctl"
      end
    end
  end
end
