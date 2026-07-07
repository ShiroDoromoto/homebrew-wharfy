class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.12.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.12.0/wharfy_0.12.0_darwin_arm64.tar.gz"
      sha256 "4e6f93b9e8f108457b16536a64bdd35eabcd149bf4a66d72477cb8efadb665ac"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.12.0/wharfy_0.12.0_darwin_amd64.tar.gz"
      sha256 "e79ddf7ed889fdee3f59c448d2117cd7c324d9a4e7ac8142a0a6149b3ebe96b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.12.0/wharfy_0.12.0_linux_arm64.tar.gz"
      sha256 "98d87a4c03703ebd18ba7dab1dd4506aa43c015f5877fb227bff0ce22cc6c807"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.12.0/wharfy_0.12.0_linux_amd64.tar.gz"
      sha256 "f6731cf46c86191f761bd63ece4aea109f53a841ee63598f43231e7a04ad5c1c"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.12.0", shell_output("#{bin}/wharfy version")
  end
end
