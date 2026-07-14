class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.22.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.22.0/wharfy_0.22.0_darwin_arm64.tar.gz"
      sha256 "e5cc2db93e7deddb62242eb01b38f22e9aa0682e0446b6c56a307e77e21e89b5"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.22.0/wharfy_0.22.0_darwin_amd64.tar.gz"
      sha256 "27072f7f38f37a9e9b5e190bc8da281e643dddd2b94ec674e595042b8e9c21d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.22.0/wharfy_0.22.0_linux_arm64.tar.gz"
      sha256 "c0f39eb80c75e2d4adc55dd70572876f61e9d6121c0c2c1034a48615379f7cb9"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.22.0/wharfy_0.22.0_linux_amd64.tar.gz"
      sha256 "7d3f6e8ad954abd4256e25758ada91e545099a2e210428aa71f696f1488637a1"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.22.0", shell_output("#{bin}/wharfy version")
  end
end
