class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.3.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.3.0/wharfy_0.3.0_darwin_arm64.tar.gz"
      sha256 "2b37e3f8fd807a6490a73f472fda06e1c4e25e4ce009beec71c24de6e2043fd2"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.3.0/wharfy_0.3.0_darwin_amd64.tar.gz"
      sha256 "694497fd7e20716f34c4fc698e7aa68dd1bbdd295e177423aa504b55ef9dc4ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.3.0/wharfy_0.3.0_linux_arm64.tar.gz"
      sha256 "a59756de0cdf14d5f75f1baea887f814534309ac79e3355253a64862d87d6db1"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.3.0/wharfy_0.3.0_linux_amd64.tar.gz"
      sha256 "9d9dc2efc5d70ca75c06a13a73c05f938b9269eae01aa2a9e3f40e7f902c8221"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/wharfy version")
  end
end
