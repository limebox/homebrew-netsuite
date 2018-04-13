class Sdfcli < Formula
  desc "NetSuite SDF CLI Tool"
  homepage "https://system.netsuite.com/app/help/helpcenter.nl?fid=chapter_4779302061.html"
  url "https://github.com/limebox/sdf/raw/17.2.1/Files/brew/sdfcli-17.2.1.tar.gz"
  sha256 "6250cb9efa46cc281a287d2d845c1ff7d86f2a1b4c7ab8c87846e3e446023e65"

  depends_on "maven" => :build

  def install
    bin.install "sdfcli", "sdfcli-createproject"
    libexec.install "pom.xml", "com.netsuite.ide.core_2017.2.0.jar"
  end

  test do
    system "#{bin}/sdfcli"
  end
end
