class Cdmation < Formula
  desc "Automations for your cds"
  homepage "https://github.com/adamzafir/cdmation"
  url "https://github.com/adamzafir/cdmation/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "92c7931e670646c23f35fbe52a6ddc7962c6bdf04d1faf7aea2e434b00c874b3"
  license "MIT"

  def install
    bin.install "cdmation"
    pkgshare.install "cdmation-hook.zsh"
  end

  def caveats
    <<~EOS
      Add this line to your ~/.zshrc:
        source "#{opt_pkgshare}/cdmation-hook.zsh"
    EOS
  end

  test do
    system "#{bin}/cdmation", "help"
  end
end
