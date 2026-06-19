class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.2.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.3/wharfy_0.2.3_darwin_arm64.tar.gz"
      sha256 "9e22e485f2143ac0a5cb7e64d63d388564470a67438b357a263410e2a596b799"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.3/wharfy_0.2.3_darwin_amd64.tar.gz"
      sha256 "24668fd96705edf3ae223c9710103c6838efabeb1e4b0b5a118cb26753936c64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.3/wharfy_0.2.3_linux_arm64.tar.gz"
      sha256 "967a3be94edcd654bc2111ce7379f689e2cbaf3d330c0302ad8629ac9416e274"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.2.3/wharfy_0.2.3_linux_amd64.tar.gz"
      sha256 "696972d490e9ac1996a4a77decc2c4117077f3c94ae431aaa4adf58f68bf99b7"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.2.3", shell_output("#{bin}/wharfy version")
  end
end
