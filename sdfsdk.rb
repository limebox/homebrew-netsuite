class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://system.netsuite.com/download/suitecloud-sdk/cli/java/latest/sdf-cli.tar.gz"
  sha256 "dec6dcb34202a3b1e56a47c274e34d6899632e89767516e7f2ec6ea1eae4d299"
  version "19.2.0"

  # Resolve cask dependencies
  depends_on :java => "1.8"

  def install

        system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/19.2.0/sdfsdk", "-o", "#{buildpath}/sdfsdk"
    bin.install "sdfcli", "cli-2019.2.0.jar","sdfsdk"

  end

  def post_install

    # Install .clicache shortcut
    system "ln", "-s", "~/.clicache", "#{bin}/.clicache"

  end

  test do

    system "#{bin}/sdfcli"

  end
end
