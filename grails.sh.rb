class GrailsSh < Formula
  desc "Bash script for selecting and calling the correct Grails version when you have more than one version installed"
  homepage "https://github.com/deluan/grails.sh"
  version "28ee603"
  url "https://github.com/deluan/grails.sh/archive/#{version}.zip"
  sha256 "6bb021074ddd6ddb7b640691b1d6c5cd7269f3a601d6b947d54a66ed0be93623"

  conflicts_with "grails", :because => "Required versions of Grails will be downloaded on demand"

  def install
    bin.install 'grails'
  end

  def caveats; <<-EOS.undent
    * Grails CANNOT be installed through Homebrew.
    * All your Grails versions must be installed under the same base directory. Ex:
        /opt/grails-1.0.3
        /opt/grails-1.1.1
        /opt/grails-2.1.0.RC1
    * set GRAILS_HOME environment variable to your "default" Grails installation
    * Requires cURL and unzip (If you want it to automatically pull missing versions)
    EOS
  end
end
