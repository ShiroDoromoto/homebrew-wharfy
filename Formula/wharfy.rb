class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.20.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.20.0/wharfy_0.20.0_darwin_arm64.tar.gz"
      sha256 "a8a6d728d2c69354c6502a82c948d6b3f8ddabdce1642d9060341c899d6312fe"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.20.0/wharfy_0.20.0_darwin_amd64.tar.gz"
      sha256 "be7d9a1e08560b51886cc5b48cf1b8cf498e6d6c1bc6f26bd4afe2a09175f429"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.20.0/wharfy_0.20.0_linux_arm64.tar.gz"
      sha256 "0be17bb471024ca6113fd1a03810766c54284eab357dda7a54aa3d8db2ec08d9"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.20.0/wharfy_0.20.0_linux_amd64.tar.gz"
      sha256 "0d67c1f9006883c5c4b6fa8ecdfdf554f5d1b40224efba1586b806e745cec5c9"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.20.0", shell_output("#{bin}/wharfy version")
  end
end
