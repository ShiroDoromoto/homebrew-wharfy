class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.20.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.20.1/wharfy_0.20.1_darwin_arm64.tar.gz"
      sha256 "7d9764f7cfbb22d36e6c8d82e5ee5ae75961ee8302080677803148b9a43f5cdf"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.20.1/wharfy_0.20.1_darwin_amd64.tar.gz"
      sha256 "511755f2d2117de0400cb1fa6b70c8d8a71538efdcab1237940068a75b7281b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.20.1/wharfy_0.20.1_linux_arm64.tar.gz"
      sha256 "997e751a6a72bc39da5bd666cd71215ce98e439e2e83c535b4eac0b411df0a41"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.20.1/wharfy_0.20.1_linux_amd64.tar.gz"
      sha256 "d9f504fc038f14eb4599c836db9c3a327705288b3ea27187d310403032498b38"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.20.1", shell_output("#{bin}/wharfy version")
  end
end
