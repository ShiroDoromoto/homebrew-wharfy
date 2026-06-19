class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.2.4"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.4/wharfy_0.2.4_darwin_arm64.tar.gz"
      sha256 "14d7f9edb0080129b431eb0d9024aa03f5da975473fa6d507f8ada131719ef35"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.4/wharfy_0.2.4_darwin_amd64.tar.gz"
      sha256 "99977123479ebaf672c6473aa3eb555e53adffe89f10c373b9eedd82d1e48a14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.4/wharfy_0.2.4_linux_arm64.tar.gz"
      sha256 "5f201e49ae7df8ceb97fb727e912354ba149a2623b68cbab12dcb037e08afd9f"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.4/wharfy_0.2.4_linux_amd64.tar.gz"
      sha256 "1ccf7cf33e2afd4bf9d6b10a9dbeee3d2fe4e5284c2a82cd6ee4ffcb2cf51844"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.2.4", shell_output("#{bin}/wharfy version")
  end
end
