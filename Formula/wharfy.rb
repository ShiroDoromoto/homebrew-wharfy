class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.7.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.7.0/wharfy_0.7.0_darwin_arm64.tar.gz"
      sha256 "b4508ecfe7eaf852117aba819ca45233c47e457a1d60a32b99c39a62470c498a"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.7.0/wharfy_0.7.0_darwin_amd64.tar.gz"
      sha256 "1998f74bd917cbdb145a149ec77e887690f26846f9b7af34e5da27d25f1742ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.7.0/wharfy_0.7.0_linux_arm64.tar.gz"
      sha256 "f7390129b90347a17a469c93f51c3f2c70975c94008d595f1923b7f05d3a97c8"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.7.0/wharfy_0.7.0_linux_amd64.tar.gz"
      sha256 "7aa8e2b6b58af43a0fef1b7e566fe15ff60b9f176ed93820f980811ff7be6bba"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/wharfy version")
  end
end
