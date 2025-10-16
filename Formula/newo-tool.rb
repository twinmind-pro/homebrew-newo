class NewoTool < Formula
  desc "A CLI tool for Newo"
  homepage "https://github.com/twinmind-pro/newo-tool"
  version "0.2.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.2.3/newo-v0.2.3-darwin-amd64.tar.gz"
    sha256 "2749e2b4af0fd32a52785b24a5bf42039a3b46b84c9e948e7de91df963967921"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.2.3/newo-v0.2.3-darwin-arm64.tar.gz"
    sha256 "b36379cba5cba3964871e2552bc671437d8e182f937a4d447d13acf6339dcb91"
  end

  def install
    bin.install "newo"
  end

  test do
    system "#{bin}/newo", "--version"
  end
end
