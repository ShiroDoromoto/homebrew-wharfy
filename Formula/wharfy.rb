class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.2.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.0/wharfy_0.2.0_darwin_arm64.tar.gz"
      sha256 "8ac9d02c294cfbc573b0014aa58bda04b37245109458fc2fc382a6fc9f78985c"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.0/wharfy_0.2.0_darwin_amd64.tar.gz"
      sha256 "a33280fe4b75a386b550cb4cb5425d988c9c2ba012af3d9f9b91e567d8220493"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.0/wharfy_0.2.0_linux_arm64.tar.gz"
      sha256 "e3e0abe3c59a01b2e6d2013bf5c33a7341dc0c56c162b9026d31af530066d6b8"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.0/wharfy_0.2.0_linux_amd64.tar.gz"
      sha256 "5e419ada8bffb79935b5a8656e7a1d19e24728ecd6990d0e3636b24851eb1adf"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/wharfy version")
  end
end
