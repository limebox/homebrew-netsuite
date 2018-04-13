class Sdfcli < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://system.netsuite.com/app/help/helpcenter.nl?fid=section_1489072409.html"
  url "https://github.com/limebox/sdf/raw/18.1.1/Files/brew/sdfsdk-18.1.1.tar.gz"
  sha256 "b7cd0f45a3b2e4858c3264d937d36ef7152c770c08e5130bcec67a6803a58240"

  depends_on "maven" => :build

  def install
    bin.install "sdfcli", "sdfcli-createproject"
    libexec.install "pom.xml", "com.netsuite.ide.core_2018.1.1.jar", "axis.jar", "NetSuiteWebService.jar"
  end

  test do
    system "#{bin}/sdfcli"
  end
end
