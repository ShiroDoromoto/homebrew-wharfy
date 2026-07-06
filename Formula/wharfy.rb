class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.11.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.11.0/wharfy_0.11.0_darwin_arm64.tar.gz"
      sha256 "4c2e2e91827d6436479d01188fbdbf605cd60954e71413f9f65d1f06eeff42af"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.11.0/wharfy_0.11.0_darwin_amd64.tar.gz"
      sha256 "0fb5a7ef1db15d39b8c33cfdec5462e01814baa0aea6a30213848daed8d280e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.11.0/wharfy_0.11.0_linux_arm64.tar.gz"
      sha256 "593cdf255116917e96306a8d20bdeab348dac7a08c55981291f33717ed0f50b3"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.11.0/wharfy_0.11.0_linux_amd64.tar.gz"
      sha256 "3bc713f3eb044720619e5a7e7b61d86406efadcc42d8ed99d401cd05ebb7df8e"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.11.0", shell_output("#{bin}/wharfy version")
  end
end
