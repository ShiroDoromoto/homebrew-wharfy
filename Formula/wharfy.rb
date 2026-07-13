class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.19.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.19.0/wharfy_0.19.0_darwin_arm64.tar.gz"
      sha256 "0ab09ce4d83d1419723d27b45096323cce952c48748a82c63fc5ec7a19f0a226"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.19.0/wharfy_0.19.0_darwin_amd64.tar.gz"
      sha256 "4bd26fc44b7204ea8ea7e6a1802c39b1f40a8efb444c4b8f2dfaf9a650a6421b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.19.0/wharfy_0.19.0_linux_arm64.tar.gz"
      sha256 "ac9cea76b62930a31beb053eaf667a5a12b8a867310c08dadf30d02667c5091f"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.19.0/wharfy_0.19.0_linux_amd64.tar.gz"
      sha256 "41930a0caf0e83abb2dd94226d42cd77d44f06317194b981d6b2368f59138173"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.19.0", shell_output("#{bin}/wharfy version")
  end
end
