class Babble < Formula
  desc "Data sonification for Claude Code — hear your AI coding sessions"
  homepage "https://github.com/dacort/ai-radio"
  url "https://github.com/dacort/ai-radio/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "4e71904ef01dd8cca4fb8d8afcb8f93bc9941a4fba6622aa70302b6359132020"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  def caveats
    <<~EOS
      babble comes with a built-in synth pack (arcade sounds, no downloads needed).

      To install additional sound packs (Pac-Man, Mortal Kombat, Donkey Kong, etc.):
        babble packs                     # list available packs
        babble packs install pacman      # install a pack
        babble packs install mortalkombat

      Start babble:
        babble serve

      Then open http://localhost:3333 in your browser. Hit "PLAYER 1 START" and go!
    EOS
  end

  test do
    assert_match "babble v", shell_output("#{bin}/babble -version")
  end
end
