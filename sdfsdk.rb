class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://system.netsuite.com/download/suitecloud-sdk/cli/java/19.1/sdf-cli.tar.gz"
  sha256 "a59075bc7f1089ba86bbcef5b25ddb788f59ad87402cedcbbea167eb0ed605c0"

  depends_on "caskroom/versions/java8"

  def install
    bin.install "sdfcli", "cli-2019.1.0.jar"
  end

  test do
    system "#{bin}/sdfcli"
  end
end