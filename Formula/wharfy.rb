class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.23.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.1/wharfy_0.23.1_darwin_arm64.tar.gz"
      sha256 "c1796e4659a3af9f26d0b52d307722e869f2fd5f61ca92694a4b61d1505c8502"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.1/wharfy_0.23.1_darwin_amd64.tar.gz"
      sha256 "e183afcb4595f242c54069daa48aba3010ef4a01c757fd5bf6b8b155d8c247f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.1/wharfy_0.23.1_linux_arm64.tar.gz"
      sha256 "acd05d99e47a06b7c821c5ec4a5ce5132ec0ba35d3a35d99d356b4801be30aa4"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.1/wharfy_0.23.1_linux_amd64.tar.gz"
      sha256 "9020ca199482701ab70c8d91fc80f8c78be344c3c5150ddd82b47a4d4a2fa368"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.23.1", shell_output("#{bin}/wharfy version")
  end
end
