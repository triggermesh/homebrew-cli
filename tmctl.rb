class Tmctl < Formula
  desc "tmctl"
  homepage "https://github.com/triggermesh/tmctl"
  version "0.0.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v#{version}/tmctl_macOS_arm64"
      sha256 "3328f13eeb79020e0bd5f5b94877941215482921be620dd739900223cc879cdd"

      def install
        bin.install "tmctl_macOS_arm64" => "tmctl"
        chmod 0555, bin/"tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v#{version}/tmctl_macOS_amd64"
      sha256 "c56557a5733d37f1487d91fac1e59281f4e5222a1bb7252531acaf34d0790400"

      def install
        bin.install "tmctl_macOS_amd64" => "tmctl"
        chmod 0555, bin/"tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/triggermesh/tmctl/releases/download/v#{version}/tmctl_linux_arm64"
      sha256 "39c41bf80cfa862e81082f99a0eae80e7486fd988d4f903d1913e7edfbf34360"

      def install
        bin.install "tmctl_linux_arm64" => "tmctl"
        chmod 0555, bin/"tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/triggermesh/tmctl/releases/download/v#{version}/tmctl_linux_amd64"
      sha256 "4917446209a552c6036204733dec927ab778e65de752d3d1f308b7671226ed66"

      def install
        bin.install "tmctl_linux_amd64" => "tmctl"
        chmod 0555, bin/"tmctl"
        generate_completions_from_executable(bin/"tmctl", "completion", shells: [:bash, :zsh])
      end
    end
  end
end
