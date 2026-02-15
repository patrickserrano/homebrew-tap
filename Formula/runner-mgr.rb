class RunnerMgr < Formula
  desc "CLI tool for managing GitHub Actions self-hosted runners with a TUI dashboard"
  homepage "https://github.com/patrickserrano/runner-dashboard"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-macos-arm64.tar.gz"
      sha256 "613ce661eaa6ece9f58001871db04688cd5202e37105be74fea3e55397773397"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-linux-x64.tar.gz"
      sha256 "fa7b67dbcafbb969095841daafa7549d2ba55b4821164d25711015812053a183"
    end
  end

  def install
    bin.install "runner-mgr"
  end

  test do
    assert_match "runner-mgr", shell_output("#{bin}/runner-mgr --version")
  end
end
