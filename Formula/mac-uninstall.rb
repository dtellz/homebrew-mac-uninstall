class MacUninstall < Formula
    desc "CLI tool to uninstall macOS apps by deleting related files and the application itself"
    homepage "https://github.com/dtellz/mac-uninstall"
    url "https://github.com/dtellz/mac-uninstall/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "91013c2ea828ce1045aa7aed206dc46c102b0da33d4b4a18991230586720c76f"
    license "MIT"
  
    def install
        bin.install "bin/mac-uninstall.sh" => "mac-uninstall"
    end
  
    test do
      system "#{bin}/mac-uninstall", "--version"
    end
  end
