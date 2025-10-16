class NewoTool < Formula
  desc "A CLI tool for Newo"
  homepage "https://github.com/twinmind-pro/newo-tool"
  version "0.2.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.2.1/newo-v0.2.1-darwin-amd64.tar.gz"
    sha256 "3284efec89fc12f4093cba57569065115e217523b5c1c5debf0ef0584f64d493"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/twinmind-pro/newo-tool/releases/download/v0.2.1/newo-v0.2.1-darwin-arm64.tar.gz"
    sha256 "b49929c8b877dca61f58abd4fe7c39199341ff53392309fa497120ac88891d67"
  end

  def install
    bin.install "newo"
  end

  test do
    system "#{bin}/newo", "--version"
  end
end
