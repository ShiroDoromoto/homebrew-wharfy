class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.16.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.16.1/wharfy_0.16.1_darwin_arm64.tar.gz"
      sha256 "9845bc6f739bcae36c0dcdef43577606de3f22b2bbb24ba17288d8877b5578a5"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.16.1/wharfy_0.16.1_darwin_amd64.tar.gz"
      sha256 "7fb2fe2baf3a2fc6789b9ad9f98284022193594194c5e9bbd77acd2d05701ecd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.16.1/wharfy_0.16.1_linux_arm64.tar.gz"
      sha256 "3286e45a1eedb310b2087e165d43f8b6a4977e5063d7a7b97f4b9d89212e2d7d"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.16.1/wharfy_0.16.1_linux_amd64.tar.gz"
      sha256 "ef05c8676f3b4863aa0d262a5c39373ce410919d6542bd703a9046ec62b02469"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.16.1", shell_output("#{bin}/wharfy version")
  end
end
