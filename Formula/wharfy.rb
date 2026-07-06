class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.8.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.8.0/wharfy_0.8.0_darwin_arm64.tar.gz"
      sha256 "412b0bf89fc9ae25a420ed5ec750755be6e898967e176ccbb168dc9f3febd80f"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.8.0/wharfy_0.8.0_darwin_amd64.tar.gz"
      sha256 "8ffc72505053e293a1a2f4acc9ec8c79802dd6571febb581d922fd21fd69292c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.8.0/wharfy_0.8.0_linux_arm64.tar.gz"
      sha256 "31eec0bf5a7605a6b6c494a8278df6c64cd2d6684f062f8f8d511140c642feec"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.8.0/wharfy_0.8.0_linux_amd64.tar.gz"
      sha256 "0d1e755988759a8111efa7322984c4e4cff66839f76b828f8ba6fe641fc3fb76"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/wharfy version")
  end
end
