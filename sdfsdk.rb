class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://system.netsuite.com/download/suitecloud-sdk/cli/java/latest/sdf-cli.tar.gz"
  sha256 "2756382268fa9a79dfd924ed9d7667f25056d75832ae7c9fa8f082a6d7626e55"
  version "21.2.4"

  # Resolve cask dependencies
  depends_on :java => "11.0"

  def install

        system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/21.2.4/sdfsdk", "-o", "#{buildpath}/sdfsdk"
    bin.install "sdfcli", "cli-2021.2.4.jar","sdfsdk"

  end

  def post_install

    # Install .clicache shortcut
    system "ln", "-s", "#{ENV['HOME']}/.clicache", "#{bin}/.clicache"

  end

  test do

    system "#{bin}/sdfcli"

  end
end
