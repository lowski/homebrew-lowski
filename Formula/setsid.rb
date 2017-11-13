class Setsid < Formula
  desc "setsid runs a program in a new session"
  homepage "https://github.com/jerrykuch/ersatz-setsid"
  url "https://github.com/jerrykuch/ersatz-setsid/archive/master.zip"
  version "latest"

  def install
    Dir.mkdir "bin"
    system "gcc -o bin/setsid setsid.c"
    chmod 755, "bin/setsid"

    libexec.install "bin"
    bin.install_symlink libexec/"bin/setsid"
  end

  def caveats; <<-EOS.undent
    Synopsis:
      setsid program [arg...]
    EOS
  end

  def test
    assert (bin/"setsid").exist?, "setsid binary does not exist"
  end
end
