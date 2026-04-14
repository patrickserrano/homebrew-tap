class RunnerMgr < Formula
  desc "CLI tool for managing GitHub Actions self-hosted runners with a TUI dashboard"
  homepage "https://github.com/patrickserrano/runner-dashboard"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-macos-arm64.tar.gz"
      sha256 "ef24f24cd092ede4719865fe4b6d65a7cad53fd2394e20ad6af137fac7e06d7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/patrickserrano/runner-dashboard/releases/download/v#{version}/runner-mgr-linux-x64.tar.gz"
      sha256 "c19a83f61ebcc9e33f418963106cf47badcf5320445de9b9d1aa5fd097e2f608"
    end
  end

  def install
    bin.install "runner-mgr"
  end

  test do
    assert_match "runner-mgr", shell_output("#{bin}/runner-mgr --version")
  end
end
