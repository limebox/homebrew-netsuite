class SdfsdkAT1821 < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://github.com/limebox/sdf/raw/%4018.2.1/Files/brew/sdfsdk-18.2.1.tar.gz"
  sha256 "4042ebccb603901cd0fa4173bc48e1f99f7168121dd741b9be4b9ef243e22459"
  version "18.2.1"

  depends_on "maven" => :build

  def install

  	system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/19.1.0/sdfsdk", "-o", "#{buildpath}/sdfsdk"

    bin.install "sdfcli", "sdfsdk"
    libexec.install "pom.xml", "com.netsuite.ide.core_2018.2.1.jar", "axis.jar", "NetSuiteWebService.jar", ".clicache"
  end

  test do
    system "#{bin}/sdfsdk"
  end
end