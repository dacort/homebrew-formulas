class Babble < Formula
  desc "Data sonification for Claude Code — hear your AI coding sessions"
  homepage "https://github.com/dacort/ai-radio"
  url "https://github.com/dacort/ai-radio/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9b9ba41c7a93c4a82cac226d8c11467e52e02365af5d604d1dba8bf4d2dabfc4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "babble v", shell_output("#{bin}/babble -version")
  end
end
