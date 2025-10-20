class NewoTool < Formula
  desc "A CLI tool for Newo"
  homepage "https://github.com/twinmind-pro/newo-tool"
  version "0.3.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.3.2/newo-v0.3.2-darwin-amd64.tar.gz"
    sha256 "16051255f1902a0d2717e717dfba4955d6984e69efae2fb5a0efa49807c74df5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.3.2/newo-v0.3.2-darwin-arm64.tar.gz"
    sha256 "dc68c73dfd3c3b46002502b1bbdb3fa6c22b5ac8b42d70e9ae43da0d877edc54"
  end

  def install
    bin.install "newo"
  end

  test do
    system "#{bin}/newo", "--version"
  end
end
