class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.21.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.21.0/wharfy_0.21.0_darwin_arm64.tar.gz"
      sha256 "f8be3db8e4e3682be736e42482f931fb4d177c24542719a97390559d68e08601"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.21.0/wharfy_0.21.0_darwin_amd64.tar.gz"
      sha256 "ae951b03aa326d984c620a0e9bd126647bbecf83015189a71edb8c194569d208"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.21.0/wharfy_0.21.0_linux_arm64.tar.gz"
      sha256 "d2eb26df5d6a3cda988df71f6c842a7995f16cfc573c270f4b282d55641e1de7"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.21.0/wharfy_0.21.0_linux_amd64.tar.gz"
      sha256 "1b121ebc1c279898222c8910acabd3650d30a44e147b3beac1f6db027c656fda"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.21.0", shell_output("#{bin}/wharfy version")
  end
end
