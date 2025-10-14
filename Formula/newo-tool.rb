class NewoTool < Formula
  desc "A CLI tool for Newo"
  homepage "https://github.com/twinmind-pro/newo-tool"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.1.0/newo-v0.1.0-darwin-amd64.tar.gz"
    sha256 "2d8aaec43dd4298c11cca2842a0bdbf27a2adb866fd0e96244cdc0b009a4e3fd"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.1.0/newo-v0.1.0-darwin-arm64.tar.gz"
    sha256 "37679a3c1198484c1aab2cfeb65ef667825b304b93eb2d1f1117f331cd48623f"
  end

  def install
    bin.install "newo"
  end

  test do
    system "#{bin}/newo", "--version"
  end
end
