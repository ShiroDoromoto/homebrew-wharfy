class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.18.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.18.0/wharfy_0.18.0_darwin_arm64.tar.gz"
      sha256 "b363de9958bf3823547478d82fe25416927691d18064add822cb289d9bb809fc"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.18.0/wharfy_0.18.0_darwin_amd64.tar.gz"
      sha256 "4f42a90e455fdbfae4349815c30138eded1c203ec91c401e456a2ff72aa6862a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.18.0/wharfy_0.18.0_linux_arm64.tar.gz"
      sha256 "d7c1cff1d680701bf1710d1eeca94197a57e82e3ea156d8ee0383fe2c003b545"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.18.0/wharfy_0.18.0_linux_amd64.tar.gz"
      sha256 "285818c98fd4b8d063a830b31efd9f8a81848169875fcd945ee78a8c2dc64152"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.18.0", shell_output("#{bin}/wharfy version")
  end
end
