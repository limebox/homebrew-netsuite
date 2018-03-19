class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://system.netsuite.com/app/help/helpcenter.nl?fid=chapter_4779302061.html"
  url "https://github.com/limebox/sdf/raw/18.1.0/Files/brew/sdfsdk-18.1.0.tar.gz"
  sha256 "10aba426e41136d721ed2d191355e92e25726350"

  depends_on "maven" => :build

  def install
    bin.install "sdfsdk", "sdfsdk-createproject"
    libexec.install "pom.xml", "com.netsuite.ide.core_2018.1.0.jar"
  end

  test do
    system "#{bin}/sdfsdk"
  end
end
