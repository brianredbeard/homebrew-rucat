class Rucat < Formula
  desc "rucat is cat reborn for the era of LLMs. A critical tool for every prompt engineer."
  homepage "https://github.com/brianredbeard/rucat"
  url "https://github.com/brianredbeard/rucat/archive/refs/tags/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "5a317789196b0527339790b021d7b14d8622c71f54d32a2491b402120e5c1285"
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

