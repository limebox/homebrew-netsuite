class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://system.netsuite.com/download/suitecloud-sdk/cli/java/19.1/sdf-cli.tar.gz"
  sha256 "a59075bc7f1089ba86bbcef5b25ddb788f59ad87402cedcbbea167eb0ed605c0"
  version "19.1.0"

  # Resolve cask dependencies
  depends_on :java => "1.8"

  def install

  	system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/19.1.0/sdfsdk", "-o", "#{buildpath}/sdfsdk"
    bin.install "sdfcli", "cli-2019.1.0.jar","sdfsdk"

  end

  def post_install

    # Install .clicache shortcut
    system "ln", "-s", "~/.clicache", "#{bin}/.clicache"

  end

  test do

    system "#{bin}/sdfcli"

  end
end
