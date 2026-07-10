class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.16.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.16.0/wharfy_0.16.0_darwin_arm64.tar.gz"
      sha256 "34fcd362f2fcccf4b65330ac5a065347f40ede0549e107fde9797ac3d2e67b04"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.16.0/wharfy_0.16.0_darwin_amd64.tar.gz"
      sha256 "8efe905f9ebe6673e8d8a53ba3ab19060d814969d911272e7e8c53a891c9f22f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.16.0/wharfy_0.16.0_linux_arm64.tar.gz"
      sha256 "4aaeb170d2ed629e4d89a27fd7a518ec2886377265a0262cca6ce27fa2dc0e48"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.16.0/wharfy_0.16.0_linux_amd64.tar.gz"
      sha256 "bee60d3dc4bf1c8aec5d8b52fcf5948d5b5cc294e25d64378a965b38359ad694"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.16.0", shell_output("#{bin}/wharfy version")
  end
end
