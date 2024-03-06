class MacUninstall < Formula
    desc "CLI tool to uninstall macOS apps by deleting related files and the application itself"
    homepage "https://github.com/dtellz/mac-uninstall"
    url "https://github.com/dtellz/mac-uninstall/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "4a807135fa2cde4680f80053e723e0def1c46e659ddd5bebaae5eaf649c731e2"
    license "MIT"
  
    def install
        bin.install "bin/mac-uninstall.sh" => "mac-uninstall"
    end
  
    test do
      system "#{bin}/mac-uninstall", "--version"
    end
  end
