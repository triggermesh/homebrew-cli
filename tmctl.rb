# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tmctl < Formula
  desc "tmctl"
  homepage "https://github.com/triggermesh/tmctl"
  version "1.1.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.0/tmctl_macOS_amd64.tar.gz"
      sha256 "f08b7a971aeec8c97bc00a2824fa62fbe15984c6b646bba3bc6a3d7a35a073bc"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.0/tmctl_macOS_arm64.tar.gz"
      sha256 "fd6711a6905e54b748417a5c3f3cfb18990044eaa154ad9c22ea1ce4eca4271f"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.0/tmctl_linux_armv6.tar.gz"
      sha256 "a68e2bbe502f40a696b2c9eb08c1260ebda3a1b734c5cfa202ec609fb143bb8a"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.0/tmctl_linux_arm64.tar.gz"
      sha256 "cd80961d073baa20795e61c226890bda752f84f9b028d4564c280f5824dffdca"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.0/tmctl_linux_amd64.tar.gz"
      sha256 "961cd330dc69d0d26fdc16392c4c2d5f0df89b2ca28a60c2f55c0372fb59f660"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end
end
