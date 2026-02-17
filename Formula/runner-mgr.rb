class RunnerMgr < Formula
  desc "CLI tool for managing GitHub Actions self-hosted runners with a TUI dashboard"
  homepage "https://github.com/patrickserrano/runner-dashboard"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-macos-arm64.tar.gz"
      sha256 "e22fe64e11f53c5d55b281d2f51d9e8794613bd6f70444229378277ccfc8626a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-linux-x64.tar.gz"
      sha256 "3053495aac75fc6db07a4e2f41e51c874be940c77c399b749606e9df43e6245b"
    end
  end

  def install
    bin.install "runner-mgr"
  end

  test do
    assert_match "runner-mgr", shell_output("#{bin}/runner-mgr --version")
  end
end
