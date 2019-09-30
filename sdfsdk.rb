class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://system.netsuite.com/download/suitecloud-sdk/cli/java/latest/sdf-cli.tar.gz"
  sha256 "eda2e440a374cb226b15ba6cc5b5e9b9824acf2203f0882c6c81f3d0ac2e841c"
  version "19.2.0"

  # Resolve cask dependencies
  depends_on :java => "1.8"

  def install

        system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/19.2.0/sdfsdk", "-o", "#{buildpath}/sdfsdk"
    bin.install "sdfcli", "cli-2019.2.1.jar","sdfsdk"

  end

  def post_install

    # Install .clicache shortcut
    system "ln", "-s", "#{ENV['HOME']}/.clicache", "#{bin}/.clicache"

  end

  test do

    system "#{bin}/sdfcli"

  end
end
