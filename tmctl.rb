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
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_macOS_arm64.tar.gz"
      sha256 "384a33ae3220a4c673afdc10c6717a94c12d303f033c60efcca05d0cecde5337"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_macOS_amd64.tar.gz"
      sha256 "930c44cc0c19617f912c12da8c4fc7905a12d6fe35fd30813428933403e9127c"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_linux_amd64.tar.gz"
      sha256 "d5d3ecbb4bd7e798d811df40cb7ef1d88fedc0fb0f3f07b467fda485e965062d"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_linux_armv6.tar.gz"
      sha256 "c2929322e70d0e2175a04a96c2b8c174119cd62f2cc456ad4d2da27e5dda0909"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.0.0/tmctl_linux_arm64.tar.gz"
      sha256 "9fea2aeeb5b31f7115a4a4d4cd13154ff0685979dd77330ad1ed13c3575aceb4"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end
end
