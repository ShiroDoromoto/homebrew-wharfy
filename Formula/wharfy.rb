class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.23.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.0/wharfy_0.23.0_darwin_arm64.tar.gz"
      sha256 "f26b1411c8bc2aefa9ff40d3a84180d2705e8de011d68aa8763eeadff1d1627f"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.0/wharfy_0.23.0_darwin_amd64.tar.gz"
      sha256 "1a10d10803b5e88855957760aeabc2cfacab34f2bf13f0daacb2d646df01b659"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.0/wharfy_0.23.0_linux_arm64.tar.gz"
      sha256 "69961e014c1fe842c1792483023d8398bb18cccb9eb80eab353833279cba20a1"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.23.0/wharfy_0.23.0_linux_amd64.tar.gz"
      sha256 "8d2040eba7fb70c065c227aed10d53ed596bf63ea81a54519dd237b636eefef5"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.23.0", shell_output("#{bin}/wharfy version")
  end
end
