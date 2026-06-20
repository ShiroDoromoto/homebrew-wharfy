class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.5.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.5.0/wharfy_0.5.0_darwin_arm64.tar.gz"
      sha256 "2ee47d266f51fe0ec90724026a1fcc665c6bc8a54b35a4df356949b83f4d2ba4"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.5.0/wharfy_0.5.0_darwin_amd64.tar.gz"
      sha256 "8bc45a21337da949030658bb5ec013dff81e456cbf2bd94de823eebefc1777aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.5.0/wharfy_0.5.0_linux_arm64.tar.gz"
      sha256 "9104ea73db2b9a964230a202f2df0de31522b561fdb645587e7fdbed0bb4289d"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.5.0/wharfy_0.5.0_linux_amd64.tar.gz"
      sha256 "8c58118353e2d27bc0805ea202555a7bd09522f8bfe6ebf862565b868e655c75"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/wharfy version")
  end
end
