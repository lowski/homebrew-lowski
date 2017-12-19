class Neovim < Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io"
  url "https://github.com/neovim/neovim/releases/download/v0.2.2/nvim-macos.tar.gz"
  version "0.2.2"
  sha256 "18c3d048d8670515be9255d8b4a3c3b9f869f0cf4a40538fe7b85214edae44b3"

  def install
    chmod 0755, "bin/nvim"

    libexec.install "bin", "libs", "share"
    bin.install_symlink libexec/"bin/nvim"
  end

  test do
    assert (bin/"nvim").exist?, "neovim binary does not exist"
  end
end
