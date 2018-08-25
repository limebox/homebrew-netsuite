class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://system.netsuite.com/app/help/helpcenter.nl?fid=section_1489072409.html"
  url "https://github.com/limebox/sdf/raw/18.1.2/Files/brew/sdfsdk-18.1.2.tar.gz"
  sha256 "6120c2efa1294428d290dbe492b35d8223ecbd34e137515b245cbb2d31bfb45f"

  depends_on "maven" => :build

  def install
    bin.install "sdfcli", "sdfcli-createproject"
    libexec.install "pom.xml", "com.netsuite.ide.core_2018.1.2.jar", "axis.jar", "NetSuiteWebService.jar"
  end

  test do
    system "#{bin}/sdfsdk"
  end
end
