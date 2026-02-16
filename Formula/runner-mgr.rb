class RunnerMgr < Formula
  desc "CLI tool for managing GitHub Actions self-hosted runners with a TUI dashboard"
  homepage "https://github.com/patrickserrano/runner-dashboard"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-macos-arm64.tar.gz"
      sha256 "8f1c237807539493314a0d1979f1d2c361be2ff8531ecce7a4704c075fb091dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-linux-x64.tar.gz"
      sha256 "dbefa2c8f99382d88b940c7612d63cd339e43cd725919cc23507bd0aac5864d0"
    end
  end

  def install
    bin.install "runner-mgr"
  end

  test do
    assert_match "runner-mgr", shell_output("#{bin}/runner-mgr --version")
  end
end
