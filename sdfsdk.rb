class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://github.com/limebox/sdf/raw/18.2.1/Files/brew/sdfsdk-18.2.1.tar.gz"
  sha256 "7cc40481acb67147728b76e2c3330b27517cce90d8e03285d1aa76206d22893b"
  version "18.2.1"

  depends_on "maven" => :build

  def install
    bin.install "sdfcli"
    libexec.install "pom.xml", "com.netsuite.ide.core_2018.2.1.jar", "axis.jar", "NetSuiteWebService.jar", ".clicache"
  end

  test do
    system "#{bin}/sdfsdk"
  end
end
