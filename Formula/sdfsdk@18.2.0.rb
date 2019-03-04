class SdfsdkAT1820 < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://github.com/limebox/sdf/raw/%4018.2.0/Files/brew/sdfsdk-18.2.0.tar.gz"
  sha256 "9286972d7009122c45b9444d5551ed020fe683fce7c29bc175196b57a766db96"
  version "18.2.0"

  depends_on "maven" => :build

  def install

  	system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/19.1.0/sdfsdk", "-o", "#{buildpath}/sdfsdk"

    bin.install "sdfcli", "sdfsdk"
    libexec.install "pom.xml", "com.netsuite.ide.core_2018.2.0.jar", "axis.jar", "NetSuiteWebService.jar", ".clicache"
  end

  test do
    system "#{bin}/sdfsdk"
  end
end