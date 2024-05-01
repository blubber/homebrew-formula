class Voxd < Formula
  desc "voxd is a HTTP wrapper around macOs' speech synthesis system"
  homepage "https://github.com/blubber/voxd"
  url "https://github.com/blubber/voxd/releases/download/v0.1.2/voxd-0.1.2.tar.gz"
  sha256 "845935ec1af90293d19c5b7c4c1df1f6f8a45ddd662dbac2f1f4be6b5091af58"

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
