class GrailsSh < Formula
  desc "Bash script for selecting and calling the correct Grails version when you have more than one version installed"
  homepage "https://github.com/deluan/grails.sh"
  version "b86a0781"
  url "https://github.com/deluan/grails.sh/archive/#{version}.zip"
  sha256 "3c666b0bc0013adcb0430347a4eed60a07e24ba6b2b7517fd3804d8e43528d30"

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
