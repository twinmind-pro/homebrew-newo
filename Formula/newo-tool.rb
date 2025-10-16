class NewoTool < Formula
  desc "A CLI tool for Newo"
  homepage "https://github.com/twinmind-pro/newo-tool"
  version "0.2.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.2.2/newo-v0.2.2-darwin-amd64.tar.gz"
    sha256 "015e9bd6826125cdb9d47f31743fd80fd886f9a4fee1feaebee5fc2832948fa1"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.2.2/newo-v0.2.2-darwin-arm64.tar.gz"
    sha256 "9741a0f15532f6776d283d3f8b792f0c33d84bafb27c2e8614d88ddef6aa6bd6"
  end

  def install
    bin.install "newo"
  end

  test do
    system "#{bin}/newo", "--version"
  end
end
