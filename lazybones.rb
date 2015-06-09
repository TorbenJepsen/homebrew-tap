class Lazybones < Formula
  desc "Lazybones allows you to create a new project structure for any framework or library for which the tool has a template."
  homepage 'https://github.com/pledbrook/lazybones'
  url "https://bintray.com/artifact/download/pledbrook/lazybones-templates/lazybones-0.8.zip"
  version "0.8"
  sha256 "922693a3b91b3dfb26a641be1200818c651801a3cc24992b7af6049e9fa97df8"

  def install
    bin.install 'bin/lazybones'
    lib.install Dir['lib/*.jar']
  end

  test do
    system "#{bin}/lazybones", "--version"
  end
end
