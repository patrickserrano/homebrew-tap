class RunnerMgr < Formula
  desc "CLI tool for managing GitHub Actions self-hosted runners with a TUI dashboard"
  homepage "https://github.com/patrickserrano/runner-dashboard"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-macos-arm64.tar.gz"
      sha256 "2380f131385abb7d8101767f86f19b77d0190a8dff5ad42228d60a090462023a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-linux-x64.tar.gz"
      sha256 "741a7676b240452bb00c2cc4f1c5dc1f1a77eb6862ee7ab22ef2153e8f087c88"
    end
  end

  def install
    bin.install "runner-mgr"
  end

  test do
    assert_match "runner-mgr", shell_output("#{bin}/runner-mgr --version")
  end
end
