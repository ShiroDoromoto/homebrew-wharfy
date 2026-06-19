class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.1.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.1.0/wharfy_0.1.0_darwin_arm64.tar.gz"
      sha256 "6ee67556879ec8aca59652ddd3e0a10fbc32811ff8dbdbb717026a5c03384155"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.1.0/wharfy_0.1.0_darwin_amd64.tar.gz"
      sha256 "19f59ae4d9487717a1368f3ee8384e9351088ff390b770d5be3665c85245f76d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.1.0/wharfy_0.1.0_linux_arm64.tar.gz"
      sha256 "8066d39524bda6cfe5501dd14a35f6abda930d403d7a8fbe5094b6545234e4fb"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.1.0/wharfy_0.1.0_linux_amd64.tar.gz"
      sha256 "81d1d645adfa1203f4f204f1c591c4654d8f9cc540ec67dbc365ed5baa9a20b0"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/wharfy version")
  end
end
