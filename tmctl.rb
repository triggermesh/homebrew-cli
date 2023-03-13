# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tmctl < Formula
  desc "tmctl"
  homepage "https://github.com/triggermesh/tmctl"
  version "1.2.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.2.1/tmctl_macOS_arm64.tar.gz"
      sha256 "a6af1caf0705adb32ae98a1cc68e235e2b0578fdafc7983476c34af342b786ca"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.2.1/tmctl_macOS_amd64.tar.gz"
      sha256 "baf8ac895f1732f210d89b2a42488ae6cfadde8a2055a126ef95525c7e262128"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.2.1/tmctl_linux_arm64.tar.gz"
      sha256 "c6002d4a2b275a3504c1a509094f2154016c1ef179993deca7d1337055ecc889"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.2.1/tmctl_linux_armv6.tar.gz"
      sha256 "73cca646d09134223cddf54d602ada36a4a28fae83bda0d17dfe48e60d32ef24"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v1.2.1/tmctl_linux_amd64.tar.gz"
      sha256 "b2c76bed8e19ea24e220195cd6e7f6b63ce4befff3cced8ed6d4ba16b33ee119"

      def install
        bin.install "tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end
end
