class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://github.com/limebox/sdf/raw/18.2.1/Files/brew/sdfsdk-18.2.1.tar.gz"
  sha256 "05892eb1a8ac38b43117caed14e0e5fc63923d962b76dff7074d159996e38683"

  depends_on "maven" => :build

  def install
    bin.install "sdfcli"
    libexec.install "pom.xml", "com.netsuite.ide.core_2018.2.1.jar", "axis.jar", "NetSuiteWebService.jar"
  end

  test do
    system "#{bin}/sdfsdk"
  end
end
