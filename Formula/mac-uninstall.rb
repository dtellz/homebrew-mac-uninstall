class MacUninstall < Formula
    desc "CLI tool to uninstall macOS apps by deleting related files and the application itself"
    homepage "https://github.com/dtellz/mac-uninstall"
    url "https://github.com/dtellz/mac-uninstall/archive/refs/tags/v1.0.2.tar.gz"
    sha256 "3073dac8c03a513ff38661c9cc8dab792c1f59ce6477235609f106bfe80d3d5c"
    license "MIT"
  
    def install
        bin.install "bin/mac-uninstall.sh" => "mac-uninstall"
    end
  
    test do
      system "#{bin}/mac-uninstall", "--version"
    end
  end
