class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.17.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.17.0/wharfy_0.17.0_darwin_arm64.tar.gz"
      sha256 "b95d8037eae3d9f285900f807b7989dcbb1686349eb2a34984babd5d64ba415d"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.17.0/wharfy_0.17.0_darwin_amd64.tar.gz"
      sha256 "2df3c715bd55401b4d8d99397fca33dd74f8e045cbf71990e8f5020c69143c36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.17.0/wharfy_0.17.0_linux_arm64.tar.gz"
      sha256 "b5d3b2875ddb487230512c184ea5b5701d605db20324288c194f5174d1db6a8e"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.17.0/wharfy_0.17.0_linux_amd64.tar.gz"
      sha256 "ea94ea9e190a2c201a4903fc1485bca2c7dfc1406b982c2f82a23b8652b3bb12"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.17.0", shell_output("#{bin}/wharfy version")
  end
end
