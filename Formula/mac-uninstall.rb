class MacUninstall < Formula
    desc "CLI tool to uninstall macOS apps by deleting related files and the application itself"
    homepage "https://github.com/dtellz/mac-uninstall"
    url "https://github.com/dtellz/mac-uninstall/archive/refs/tags/v1.0.0.tar.gz" # Update this URL
    sha256 "" # Update with the actual SHA-256 checksum of your tar.gz file
    license "MIT"
  
    def install
      bin.install "bin/mac-uninstall"
    end
  
    test do
      system "#{bin}/mac-uninstall", "--version"
    end
  end
