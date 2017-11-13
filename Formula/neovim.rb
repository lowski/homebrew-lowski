class Neovim < Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io"
  url "https://github.com/neovim/neovim/releases/download/v0.2.1/nvim-macos.tar.gz"
  version "0.2.1"
  sha256 "8ddafa48f9ed16cd97cb00ab94adcf451e0ffd498799f163e1935a89f14ff8f7"

  def install
    chmod 0755, "bin/nvim"

    libexec.install "bin", "libs", "share"
    bin.install_symlink libexec/"bin/nvim"
  end

  test do
    assert (bin/"nvim").exist?, "neovim binary does not exist"
  end
end
