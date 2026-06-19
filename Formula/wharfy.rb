class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.2.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.1/wharfy_0.2.1_darwin_arm64.tar.gz"
      sha256 "373e673df7ccdbfe052147842c5509bdc74cc64ebb53ff9bb68b8502363d82b6"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.1/wharfy_0.2.1_darwin_amd64.tar.gz"
      sha256 "8a625241b92a50f71f223678e09a1b8c73b3df4a6d774244a8ad0da66969336c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.1/wharfy_0.2.1_linux_arm64.tar.gz"
      sha256 "11aa646d49f8706e6772ca650f14711d97a62421b4c690bf8cc6a1c2fc98a1ea"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.1/wharfy_0.2.1_linux_amd64.tar.gz"
      sha256 "848899afa069befa722a6171484c52325c370f28ac0ece760e437d77c140234a"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/wharfy version")
  end
end
