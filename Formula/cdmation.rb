class Cdmation < Formula
  desc "Automations for your cds"
  homepage "https://github.com/adamzafir/cdmation"
  url "https://github.com/adamzafir/cdmation/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c205637667e17f0c94cb52e6d9bb393ebcc334b31d04013907f7c1c67a6b2458"
  license "MIT"

  def install
    bin.install "cdmation"
    pkgshare.install "cdmation-hook.zsh"
  end

  def caveats
    <<~EOS
      Add this line to your ~/.zshrc:
        source "#{pkgshare}/cdmation-hook.zsh"
    EOS
  end

  test do
    system "#{bin}/cdmation", "help"
  end
end
