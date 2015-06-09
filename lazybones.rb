class Lazybones < Formula
  desc "Lazybones allows you to create a new project structure for any framework or library for which the tool has a template."
  homepage 'https://github.com/pledbrook/lazybones'
  url "https://bintray.com/artifact/download/pledbrook/lazybones-templates/lazybones-0.8.1.zip"
  version "0.8.1"
  sha256 "b727f9233ab00552d4bc063995ff95d2b578dc3fb808b7d59a296eee7186f7f2"

  def install
    bin.install 'bin/lazybones'
    lib.install Dir['lib/*.jar']
  end

  test do
    system "#{bin}/lazybones", "--version"
  end
end
