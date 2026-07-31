class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.23.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.2/wharfy_0.23.2_darwin_arm64.tar.gz"
      sha256 "50ffae0af353a32bcfb1fe33eea98b8f6996c10d726e93292c9624e28483a2aa"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.2/wharfy_0.23.2_darwin_amd64.tar.gz"
      sha256 "c5e8fdc1a97680fef2d0ee6414f7ad5de251b3905a719011dbc3e1d6fcba0dc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.2/wharfy_0.23.2_linux_arm64.tar.gz"
      sha256 "162457209ac791c0dd563d4a59db3b165ec69c2027eaa1230c803749184cc814"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.2/wharfy_0.23.2_linux_amd64.tar.gz"
      sha256 "c683f88869ee7c06ddf3dff5b02c2b72d2254c048a68e99340a2573e88c456b8"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.23.2", shell_output("#{bin}/wharfy version")
  end
end
