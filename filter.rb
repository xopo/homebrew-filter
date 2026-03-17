class Filter < Formula
  desc "pipe utility for filtering out noise from test output"
  homepage "https://github.com/xopo/filter"
  version "v0.1.beta"
  url "https://github.com/xopo/filter/releases/download/v0.1beta/filter"
  sha256 "799ed447b80d02eb199d8ae4556c17f71d5b5e7c05d2f82f462803b8c072eb41"
  license "MIT"

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "filter"
    else 
      odie <<~EOS
        ❌ Unsupported platform. For now the Homebrew formula only suports:
        · Mac with Apple Silicon
        You can build the binary from source :https://github.com/xopo/filter
        EOS
    end
  end

end
