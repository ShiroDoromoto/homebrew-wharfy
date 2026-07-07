class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.13.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.13.0/wharfy_0.13.0_darwin_arm64.tar.gz"
      sha256 "b436fb952804111b7ae03d63d85f554a11a940250c8dd5573134bfd5823e8fd8"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.13.0/wharfy_0.13.0_darwin_amd64.tar.gz"
      sha256 "fabbd6868eba11d28065800f94076ff0535040133d68393bfe3dadce58f77369"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.13.0/wharfy_0.13.0_linux_arm64.tar.gz"
      sha256 "6e955b3d532babff6ee459a39155c17645aacae0a4285e34a88c6dee75ccded3"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.13.0/wharfy_0.13.0_linux_amd64.tar.gz"
      sha256 "6dad69b461a7ac044766bb81e8ed789ddc933c84e484f656fedb4575a5f1dfde"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.13.0", shell_output("#{bin}/wharfy version")
  end
end
