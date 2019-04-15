class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://system.netsuite.com/download/suitecloud-sdk/cli/java/19.1/sdf-cli.tar.gz"
  sha256 "ce0fff21661e4fe238d815b28557418e523e93e5687975281a504351b59989e2"
  version "19.1.1"

  # Resolve cask dependencies
  depends_on :java => "1.8"

  def install

  	system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/19.1.1/sdfsdk", "-o", "#{buildpath}/sdfsdk"
    bin.install "sdfcli", "cli-2019.1.1.jar","sdfsdk"

  end

  def post_install

    # Install .clicache shortcut
    system "ln", "-s", "~/.clicache", "#{bin}/.clicache"

  end

  test do

    system "#{bin}/sdfcli"

  end
end
