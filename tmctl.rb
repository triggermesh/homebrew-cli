# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tmctl < Formula
  desc "tmctl"
  homepage "https://github.com/triggermesh/tmctl"
  version "1.1.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.1/tmctl_macOS_amd64.tar.gz"
      sha256 "4eb7ed8f2dea249e8a8a23838742a979824e54707ace0ed96d75959232f8996c"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.1/tmctl_macOS_arm64.tar.gz"
      sha256 "a0f9027e278199f9d9b12aab453ac72699f366d64334bf54f947c60dac8c48b1"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.1/tmctl_linux_armv6.tar.gz"
      sha256 "3e3f0c03c1331eaae5ab521ae5c9e6141f9569014da872b9b7ebf22569d02856"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.1/tmctl_linux_amd64.tar.gz"
      sha256 "cbce69df2fb762f26f480f3765d5538ab3e73baaaefe4e1e6ba095362246193d"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.1.1/tmctl_linux_arm64.tar.gz"
      sha256 "a349e8ed339822ea5a715e7032b224e37fad8e233d96cab5752a3bf5c1976a01"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end
end
