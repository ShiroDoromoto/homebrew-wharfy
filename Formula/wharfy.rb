class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.23.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.3/wharfy_0.23.3_darwin_arm64.tar.gz"
      sha256 "c1b49e4d03369f3294070af8d6add4c1e11ccd41410797dbe5aaa411f131fbb9"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.3/wharfy_0.23.3_darwin_amd64.tar.gz"
      sha256 "74f3a671a6bfc3816905eb3a60cc83776b48029b976984f95d73dfa0ac1680a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.3/wharfy_0.23.3_linux_arm64.tar.gz"
      sha256 "149397814b819ace0d4004566b0671578e9fb80cd6778f4564a26a3084007886"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.3/wharfy_0.23.3_linux_amd64.tar.gz"
      sha256 "dda54a5f47ab4daf2d6b9e991b6750cbdc412be2480ef692a015032d22b851ea"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.23.3", shell_output("#{bin}/wharfy version")
  end
end
