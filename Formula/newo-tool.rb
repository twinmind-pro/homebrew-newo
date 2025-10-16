class NewoTool < Formula
  desc "A CLI tool for Newo"
  homepage "https://github.com/twinmind-pro/newo-tool"
  version "0.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.3.0/newo-v0.3.0-darwin-amd64.tar.gz"
    sha256 "1de32db8c473ca2e673e0544021e2c4ad8998da3e7f1e0c874ed764c7e91e125"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.3.0/newo-v0.3.0-darwin-arm64.tar.gz"
    sha256 "4bb74a9ee37f12115084354cf85993e613e53d7c4a13db9b59073148c17479f3"
  end

  def install
    bin.install "newo"
  end

  test do
    system "#{bin}/newo", "--version"
  end
end
