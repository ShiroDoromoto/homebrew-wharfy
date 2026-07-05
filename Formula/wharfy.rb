class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.6.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.6.1/wharfy_0.6.1_darwin_arm64.tar.gz"
      sha256 "64b3be719e5b280f997eaecd357bf31f00045b163dc17f7db0845e74f54a4387"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.6.1/wharfy_0.6.1_darwin_amd64.tar.gz"
      sha256 "7cfebb47bbf40e84e8f9b5532a1fea728c520a83e4830806059bac5863c7fa1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.6.1/wharfy_0.6.1_linux_arm64.tar.gz"
      sha256 "7484fc4053fd72ad76cbc2f465157e674fd6048ece707b8aed9e9a1358e4abb5"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.6.1/wharfy_0.6.1_linux_amd64.tar.gz"
      sha256 "a06f9e578fa6696cf9d570e2ba808300db1048b14bfed9146a149252d5135e6e"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.6.1", shell_output("#{bin}/wharfy version")
  end
end
