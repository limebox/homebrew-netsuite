class SdfsdkAT1820 < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://system.netsuite.com/app/help/helpcenter.nl?fid=section_1489072409.html"
  url "https://github.com/limebox/sdf/raw/18.2.0/Files/brew/sdfsdk-18.2.0.tar.gz"
  sha256 "5a7984bb81053e813ace46c53809f611961f84024d101e314db9d094937e5574"
  version "18.2.1"

  depends_on "maven" => :build

  def install
    bin.install "sdfcli"
    libexec.install "pom.xml", "com.netsuite.ide.core_2018.2.0.jar", "axis.jar", "NetSuiteWebService.jar"
  end

  test do
    system "#{bin}/sdfsdk"
  end
end