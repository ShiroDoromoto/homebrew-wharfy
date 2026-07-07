class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.14.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.14.1/wharfy_0.14.1_darwin_arm64.tar.gz"
      sha256 "642a05b37e6afc699a6a3473d7d9be54c90a373f268f2e715f1e2f3296c4d7ac"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.14.1/wharfy_0.14.1_darwin_amd64.tar.gz"
      sha256 "ed7231b3e8187c1560629d0e676194d7db5d30eb516e3ac3a98aed043abb2939"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.14.1/wharfy_0.14.1_linux_arm64.tar.gz"
      sha256 "e6680460c8476497e9bcf30995225825c75e5f1ddbd9c2ae6e991320c47d2b0e"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.14.1/wharfy_0.14.1_linux_amd64.tar.gz"
      sha256 "e10d71ab153535e5c48a4e9c3601fba325fb86ed8a583b335329f40c0abc56be"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.14.1", shell_output("#{bin}/wharfy version")
  end
end
