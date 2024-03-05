class MacUninstall < Formula
    desc "CLI tool to uninstall macOS apps by deleting related files and the application itself"
    homepage "https://github.com/dtellz/mac-uninstall"
    url "https://github.com/dtellz/mac-uninstall/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "3571ad015f14b2f3bfdc2f80e3abec609e145faedea88b6b275827cacba45c2e"
    license "MIT"
  
    def install
        bin.install "bin/mac-uninstall.sh" => "mac-uninstall"
    end
  
    test do
      system "#{bin}/mac-uninstall", "--version"
    end
  end
