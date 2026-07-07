class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.15.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.15.0/wharfy_0.15.0_darwin_arm64.tar.gz"
      sha256 "86dbd8276c10824954e1ef9790b3d7e6e8d5eb47d18b80d00a5b6f7137fdd742"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.15.0/wharfy_0.15.0_darwin_amd64.tar.gz"
      sha256 "d33885ccfde9b67ecbedbe4d70be18196df1263f3849ad2fcf97a1792e59913f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.15.0/wharfy_0.15.0_linux_arm64.tar.gz"
      sha256 "daf91c6ea084e0dabec1bcf8de76ec78dc63126d9817173d494945a257960390"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.15.0/wharfy_0.15.0_linux_amd64.tar.gz"
      sha256 "7e3c4ff59e27b5d1487c7f7413550a8a3a879bdd367bbb25f2cb3478da1a2918"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.15.0", shell_output("#{bin}/wharfy version")
  end
end
