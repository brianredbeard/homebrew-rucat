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
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/rucat", "--version"
  end
end

