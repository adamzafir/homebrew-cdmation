class Cdmation < Formula
  desc "Automations for your cds"
  homepage "https://github.com/adamzafir/cdmation"
  url "https://github.com/adamzafir/cdmation/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "56100bcb6f85987cbe72856f4a6aa5a168768df8caa068a247a285f636692b62"
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
