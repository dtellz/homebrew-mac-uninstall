class MacUninstall < Formula
    desc "CLI tool to uninstall macOS apps by deleting related files and the application itself"
    homepage "https://github.com/dtellz/mac-uninstall"
    url "https://github.com/dtellz/mac-uninstall/archive/refs/tags/v1.0.3.tar.gz"
    sha256 "8321a7683de7469f68038154b0c8c91fd13794c2ffd23407da086fa21a884aeb"
    license "MIT"
  
    def install
        bin.install "bin/mac-uninstall.sh" => "mac-uninstall"
    end
  
    test do
      system "#{bin}/mac-uninstall", "--version"
    end
  end
