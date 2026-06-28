class Wharfy < Formula
  homepage "https://github.com/ShiroDoromoto/wharfy"
  version "0.6.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.6.0/wharfy_0.6.0_darwin_arm64.tar.gz"
      sha256 "d60eb3aaffcf39473b5c0ef6fe61f9710edacbc80575bd3c686ec979f9c4d07e"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.6.0/wharfy_0.6.0_darwin_amd64.tar.gz"
      sha256 "2a65d824101d4c4e1affd1f149a9917d14e7596af25d10731a742ca935068b2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.6.0/wharfy_0.6.0_linux_arm64.tar.gz"
      sha256 "501b6fb0a8b85d3f8b397ce5f7ca0943b7e96a2e2c5c35a55647b0b1aebf3642"
    end
    on_intel do
      url "https://github.com/ShiroDoromoto/wharfy/releases/download/v0.6.0/wharfy_0.6.0_linux_amd64.tar.gz"
      sha256 "3c4e3149f0906f7db706a4a137f5e6758d917889b6a52833694bb7178a51e12d"
    end
  end

  def install
    bin.install "wharfy"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/wharfy version")
  end
end
