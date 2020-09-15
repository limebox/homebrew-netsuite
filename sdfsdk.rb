class Sdfsdk < Formula
  desc "NetSuite SDF SDK Tool"
  homepage "https://limebox.com/developers/sdfsdk"
  url "https://system.netsuite.com/download/suitecloud-sdk/cli/java/latest/sdf-cli.tar.gz"
  sha256 "53f23b13239bc8dcd97007d5ad2dae4e7c3098d1b607448545636cd5eb33840d"
  version "20.2.0"

  # Resolve cask dependencies
  depends_on :java => "1.8"

  def install

        system "curl", "https://raw.githubusercontent.com/limebox/homebrew-netsuite/20.1.1/sdfsdk", "-o", "#{buildpath}/sdfsdk"
    bin.install "sdfcli", "cli-2020.2.0.jar","sdfsdk"

  end

  def post_install

    # Install .clicache shortcut
    system "ln", "-s", "#{ENV['HOME']}/.clicache", "#{bin}/.clicache"

  end

  test do

    system "#{bin}/sdfcli"

  end
end
