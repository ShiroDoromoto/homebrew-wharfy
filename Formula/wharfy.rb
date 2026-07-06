class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.10.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.10.0/wharfy_0.10.0_darwin_arm64.tar.gz"
      sha256 "486a27e5df7ef7092d409780eb02624bbf0e2e356d6a4830d0b438316f1434bc"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.10.0/wharfy_0.10.0_darwin_amd64.tar.gz"
      sha256 "93fd33b79121deb086456bd5d6b33ceb16ceec8f61c2306d7ea6899f0781f62a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.10.0/wharfy_0.10.0_linux_arm64.tar.gz"
      sha256 "33705ccb553f8833bb2d65543044eb37ab73416038162abe7d638bd985e2560f"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.10.0/wharfy_0.10.0_linux_amd64.tar.gz"
      sha256 "c08863e032b8f4ab900d002d1f7018952ea40644aec802210d0c2b9e4869e6f5"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/wharfy version")
  end
end
