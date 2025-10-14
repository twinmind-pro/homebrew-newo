class NewoTool < Formula
  desc "A CLI tool for Newo"
  homepage "https://github.com/twinmind-pro/newo-tool"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.2.0/newo-v0.2.0-darwin-amd64.tar.gz"
    sha256 "95ec195019d4d1f0cbc4cc7794633591f8c6227b0de0cfcc5c770debe77e3af7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.2.0/newo-v0.2.0-darwin-arm64.tar.gz"
    sha256 "a65066597250e7844f1f44f905cfb8b54eb5ee65a7ea31b44de0129dc8f4f377"
  end

  def install
    bin.install "newo"
  end

  test do
    system "#{bin}/newo", "--version"
  end
end
