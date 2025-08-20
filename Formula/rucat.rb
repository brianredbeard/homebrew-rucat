class Rucat < Formula
  desc "rucat is cat reborn for the era of LLMs. A critical tool for every prompt engineer."
  homepage "https://github.com/brianredbeard/rucat"
  url "https://github.com/brianredbeard/rucat/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "46fba4db72cea12bfc339ab35a02c2f5e643493a9006200ec68c9ac5fd406e84"
  license "GPL-3.0-or-later"
  head "https://github.com/brianredbeard/rucat.git", branch: "main"

  depends_on "rust" => :build

  def install
    # First, build the binary from source.
    system "cargo", "build", "--release", "--locked"

    # Install the binary from the target directory.
    bin.install "target/release/rucat"

    # Now, install the static assets from the source tree.
    man1.install "assets/man/rucat.1"
    bash_completion.install "assets/completions/bash/rucat"
    fish_completion.install "assets/completions/fish/rucat.fish"
    zsh_completion.install "assets/completions/zsh/_rucat"
  end

  test do
    system "#{bin}/rucat", "--version"
  end
end

