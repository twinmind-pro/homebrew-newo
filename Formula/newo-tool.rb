class NewoTool < Formula
  desc "A CLI tool for Newo"
  homepage "https://github.com/twinmind-pro/newo-tool"
  version "1.0.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v1.0.0/newo-v1.0.0-darwin-amd64.tar.gz"
    sha256 "8b3c7e16b9500bf6ac7d13cc7efb56d3cdddfd81481b8b1f4482b2c16aec413a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v1.0.0/newo-v1.0.0-darwin-arm64.tar.gz"
    sha256 "b4b9266232812567526e74124fb83ff37ad48d38b2ebfd33fe52fdec1b6f6b6b"
  end

  def install
    bin.install "newo"
  end

  test do
    system "#{bin}/newo", "--version"
  end
end
