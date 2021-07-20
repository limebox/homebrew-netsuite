class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://system.netsuite.com/download/suitecloud-sdk/cli/java/latest/sdf-cli.tar.gz"
  sha256 "d98b3293ec246740c7ed12a131b737c078b017ca64dfc09e2845bae2625ef445"
  version "21.1.1"

  # Resolve cask dependencies
  depends_on :java => "11.0"

  def install

        system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/21.1.1/sdfsdk", "-o", "#{buildpath}/sdfsdk"
    bin.install "sdfcli", "cli-2021.1.1.jar","sdfsdk"

  end

  def post_install

    # Install .clicache shortcut
    system "ln", "-s", "#{ENV['HOME']}/.clicache", "#{bin}/.clicache"

  end

  test do

    system "#{bin}/sdfcli"

  end
end
