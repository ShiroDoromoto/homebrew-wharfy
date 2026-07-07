class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.14.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.14.0/wharfy_0.14.0_darwin_arm64.tar.gz"
      sha256 "d1b8a0d2efe6571805cacc9774cf596873e728e479e50ada5b384df97005e43c"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.14.0/wharfy_0.14.0_darwin_amd64.tar.gz"
      sha256 "a18f7f87b5a62f64b30a0a51e8de1e07802804184eef547b898c8a012f7e27f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.14.0/wharfy_0.14.0_linux_arm64.tar.gz"
      sha256 "92526b005254bd86d10d1c6329d53370fe93b267c86491474cc1550b5efa67ae"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.14.0/wharfy_0.14.0_linux_amd64.tar.gz"
      sha256 "84a5bf66dd954a1e8ee2ef591fbd6a6ae655cac6323ba7217df01811682e049a"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.14.0", shell_output("#{bin}/wharfy version")
  end
end
