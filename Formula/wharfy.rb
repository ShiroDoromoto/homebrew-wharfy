class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.2.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.2/wharfy_0.2.2_darwin_arm64.tar.gz"
      sha256 "0cc27bfc34d7c78f82e6831a74ee6b02b65187527aa4f6ed1729804434569e16"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.2/wharfy_0.2.2_darwin_amd64.tar.gz"
      sha256 "bb5c04032d76d6f9bcb9f7eeb9fe42a87d7536402f23206518d61611da20e178"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.2/wharfy_0.2.2_linux_arm64.tar.gz"
      sha256 "69105a2a972347d57504d630af6d067bc8ca8bcda8f8f3e8def8a1009429a9bd"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.2/wharfy_0.2.2_linux_amd64.tar.gz"
      sha256 "cd835a0a72e26ae6e4e86f4c8e1bf5eb3b84db1894c741d0577a01c2ffc0e7a2"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/wharfy version")
  end
end
