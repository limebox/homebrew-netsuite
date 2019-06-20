class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://system.netsuite.com/download/suitecloud-sdk/cli/java/19.1/sdf-cli.tar.gz"
  sha256 "1e665737b4b0c4ca8df5f02ceabd934fc89b45400d5e92c9fe9a7aefd1d43a00"
  version "19.1.2"

  # Resolve cask dependencies
  depends_on :java => "1.8"

  def install

  	system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/19.1.2/sdfsdk", "-o", "#{buildpath}/sdfsdk"
    bin.install "sdfcli", "cli-2019.1.2.jar","sdfsdk"

  end

  def post_install

    # Install .clicache shortcut
    system "ln", "-s", "~/.clicache", "#{bin}/.clicache"

  end

  test do

    system "#{bin}/sdfcli"

  end
end
