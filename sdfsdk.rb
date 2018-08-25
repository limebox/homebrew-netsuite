class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://system.netsuite.com/app/help/helpcenter.nl?fid=section_1489072409.html"
  url "https://github.com/limebox/sdf/raw/v18.1.2/Files/brew/sdfsdk-18.1.2.tar.gz"
  sha256 "9c83d15acbfc53442167f89701febeb4bbbc1de5c29389bc3eb0d7525e6cad67"

  depends_on "maven" => :build

  def install
    bin.install "sdfcli", "sdfcli-createproject"
    libexec.install "pom.xml", "com.netsuite.ide.core_2018.1.2.jar", "axis.jar", "NetSuiteWebService.jar"
  end

  test do
    system "#{bin}/sdfsdk"
  end
end
