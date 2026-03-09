class Filter < Formula
  desc "pipe utility for filtering out noise from test output"
  homepage "https://github.com/xopo/filter"
  version "v0.1-prerelease"
  url "https://github.com/xopo/filter/releases/download/prerelease/filter"
  sha256 "c0774516f2798d2a24e19d6afc2feba8ced2b326e3fb4169efe64e86e9bb9ac6"
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
