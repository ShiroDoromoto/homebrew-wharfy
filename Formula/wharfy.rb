class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.4.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.4.0/wharfy_0.4.0_darwin_arm64.tar.gz"
      sha256 "47f039c703dce823b343f06534f9028e86a66c1e4262c0c18e4be71f256ebf3a"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.4.0/wharfy_0.4.0_darwin_amd64.tar.gz"
      sha256 "7901d7c79e1dc6adcdec85d586ab2d90770dc78e8fe4c1751b1d09e558c3f545"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.4.0/wharfy_0.4.0_linux_arm64.tar.gz"
      sha256 "23c9f9a6e5f80e7aa0413116cd05f1e711b79e3a825e68216d38a6d133c2fd87"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.4.0/wharfy_0.4.0_linux_amd64.tar.gz"
      sha256 "df6a98e09a0e3c2325cfbdc5f9a16cc177a914ce802b2cf66f73d85d01e80ec4"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/wharfy version")
  end
end
