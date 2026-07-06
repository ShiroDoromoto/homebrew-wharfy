class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.9.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.9.0/wharfy_0.9.0_darwin_arm64.tar.gz"
      sha256 "970039de2155c3d0e34276fac0d0c1caf5ce93126aea928ce1ad44392cc28cdd"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.9.0/wharfy_0.9.0_darwin_amd64.tar.gz"
      sha256 "072a2cf3e18d32e02ae4a23dc56bdbd2601d03c6b37169d5c138fa79ffb695d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.9.0/wharfy_0.9.0_linux_arm64.tar.gz"
      sha256 "63f59653a10eddb3607fa92fb21de967c5f70e3a667549c859a903cda8682f7d"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.9.0/wharfy_0.9.0_linux_amd64.tar.gz"
      sha256 "dc8d0378fa8f28bcbfd3655641c79c2f9ec918193392262395ed120beda2b791"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/wharfy version")
  end
end
