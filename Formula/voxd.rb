class Voxd < Formula
  desc "voxd is a HTTP wrapper around macOs' speech synthesis system"
  homepage "https://github.com/blubber/voxd"
  url "https://github.com/blubber/voxd/releases/download/v0.1.1/voxd-0.1.1.tar.gz"
  sha256 "2346580eae6836c30e46e3e710db4c461a51db60b385c97c612bec400460c16e"

  def install
    bin.install "#{buildpath}/bin/voxd"
    share.install "#{buildpath}/share/voxd.json.example"
  end

  service do
    run opt_bin/"voxd"
    keep_alive true
  end

  def caveats; <<~EOS
    A configuration file can be optionally supplied as $HOME/.config/voxd.json
    An example configuration file is available at:
      https://github.com/blubber/voxd
    EOS
  end
end
